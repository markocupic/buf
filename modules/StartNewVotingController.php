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
 * Class StartNewVotingController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class StartNewVotingController extends \Frontend
{
       public function __construct()
       {
              $this->import('FrontendUser', 'User');
              return parent::__construct();
       }

       /**
        * Generate the module
        */
       public function setTemplate($objTemplate)
       {

              global $objPage;

              $objTemplate->hrefBack = $this->generateFrontendUrl($objPage->row(), '/do/menu');


              // get option tags for classes
              $opt = '<option value="0">leer</option>';
              $objClass = \ClassModel::findAll();
              if ($objClass !== null)
              {
                     while ($objClass->next())
                     {
                            $opt .= sprintf('<option value="%s">%s</option>', $objClass->id, $objClass->name);
                     }
              }
              $objTemplate->classes = $opt;

              // get option tags for subjects
              $opt = '<option value="0">leer</option>';
              $objSubject = \SubjectModel::findAll();
              if ($objSubject !== null)
              {
                     while ($objSubject->next())
                     {
                            $opt .= sprintf('<option value="%s">%s</option>', $objSubject->id, $objSubject->name);
                     }
              }
              $objTemplate->subjects = $opt;

              return $objTemplate;
       }
}
