<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2014 Leo Feyer
 *
 * @package Core
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Run in a custom namespace, so the class can be replaced
 */
namespace MCupic;

/**
 * Include the helpers
 */
require TL_ROOT . '/system/modules/buf/helper/functions.php';

/**
 * Class ModuleLogin
 *
 * Front end module "login".
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class MainController extends \Module
{

       /**
        * Template
        * @var string
        */
       protected $strTemplate = 'menu';

       /**
        * Display a login form
        * @return string
        */
       public function generate()
       {
              if (TL_MODE == 'BE')
              {
                     $objTemplate = new \BackendTemplate('be_wildcard');

                     $objTemplate->wildcard = '### Beurteilen und Fördern ###';
                     $objTemplate->title = $this->headline;
                     $objTemplate->id = $this->id;
                     $objTemplate->link = $this->name;
                     $objTemplate->href = 'contao/main.php?do=themes&amp;table=tl_module&amp;act=edit&amp;id=' . $this->id;

                     return $objTemplate->parse();
              }


              if (TL_MODE == 'FE')
              {
                     if (!FE_USER_LOGGED_IN)
                     {
                            die('Authorisierung fehlgeschlagen!');
                     }

                     if (!\Input::get('do'))
                     {
                            $this->redirect($this->addToUrl('do=menu'));
                     }

                     // set template
                     $this->strTemplate = \Input::get('do');
              }


              return parent::generate();
       }

       /**
        * Generate the module
        */
       protected function compile()
       {

              global $objPage;

              // decode, if query string is encoded
              if (\Input::get('vars'))
              {
                     $strGet = base64_decode(\Input::get('vars'));
                     $arrGet = explode('&', $strGet);
                     foreach ($arrGet as $chunk)
                     {
                            $arrItem = explode('=', $chunk);
                            \Input::setGet($arrItem[0], $arrItem[1]);
                     }
              }

              // Show logout form
              if (!FE_USER_LOGGED_IN)
              {
                     die('Authorisierung fehlgeschlagen!');
              }
              $this->import('FrontendUser', 'User');



              // switch
              switch (\Input::get('do'))
              {
                     case 'menu':

                            $objController = new \MenuController();
                            $this->Template = $objController->setTemplate($this->Template);
                            break;

                     case 'start_new_voting':

                            if (\Input::post('teacher') && \Input::post('class') && \Input::post('subject'))
                            {
                                   $teacher = \TeacherModel::findByUsername(\Input::post('teacher'))->id;
                                   $class = \Input::post('class');
                                   $subject = \Input::post('subject');

                                   $url = $this->generateFrontendUrl($objPage->row(), '/do/edit_table');
                                   $arrQuery = array('teacher' => $teacher, 'subject' => $subject, 'class' => $class);
                                   $url .= setQueryString($arrQuery, true);
                                   $this->redirect($url);
                            }

                            $objController = new \StartNewVotingController();
                            $this->Template = $objController->setTemplate($this->Template);
                            break;

                     case 'edit_table':

                            $objController = new \EditTableController();
                            $this->Template = $objController->setTemplate($this->Template);
                            break;
              }
       }
}
