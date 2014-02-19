<?php

/**
 * Contao Open Source CMS
 * Copyright (c) 2005-2014 Leo Feyer
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
    public function myErrorHandler($fehlercode, $fehlertext, $fehlerdatei, $fehlerzeile)
    {
        $subject = $fehlercode . ': Fehler in ' . $fehlerdatei . ' in Zeile ' . $fehlerzeile;
        mail('m.cupic@gmx.ch', $subject, $subject . '<br>' . $fehlertext);
        return true;
    }

    public function generate()
    {
        //set_error_handler(array($this,'myErrorHandler'));

        if (TL_MODE == 'BE') {
            $objTemplate = new \BackendTemplate('be_wildcard');

            $objTemplate->wildcard = '### Beurteilen und Fördern ###';
            $objTemplate->title = $this->headline;
            $objTemplate->id = $this->id;
            $objTemplate->link = $this->name;
            $objTemplate->href = 'contao/main.php?do=themes&amp;table=tl_module&amp;act=edit&amp;id=' . $this->id;

            return $objTemplate->parse();
        }


        if (TL_MODE == 'FE') {
            if (!FE_USER_LOGGED_IN) {
                die('Authorisierung fehlgeschlagen!');
            }

            if (!\Input::get('do')) {
                $this->redirect($this->addToUrl('do=menu'));
            }

            // set template
            $this->strTemplate = \Input::get('do');
        }


        return parent::generate();
    }

    public function generateAjax()
    {

        if (\Input::get('act') == 'resetTable') {
                $arrTable = \VotingModel::getRows(\Input::get('class'), \Input::get('subject'), \Input::get('teacher'));
                $arrJSON = array('status' => 'success', 'rows' => $arrTable);
                //mail('m.cupic@gmx.ch', '', print_r($arrTable,true));
                die(json_encode($arrJSON));
        }

        if (\Input::get('act') == 'update') {
            $rating = \VotingModel::update(\Input::post('student'), \Input::post('class'), \Input::post('teacher'), \Input::post('subject'), \Input::post('skill'), \Input::post('value'));
            if ($rating) {
                $arrJSON = array('status' => 'success', 'rating' => $rating, 'message' => 'Submitted successfully.');
            } else {
                $arrJSON = array('status' => 'success', 'rating' => '', 'message' => 'Invalid value submitted: ' . \Input::post('value'));
            }
            die(json_encode($arrJSON));
        }


        if (\Input::get('act') == 'delete_row_or_col') {
            $mode = \Input::post('mode');
            $colOrRow = \Input::post('colOrRow');
            if (\VotingModel::deleteRowOrCol($mode, $colOrRow, \Input::post('teacher'), \Input::post('subject'), \Input::post('class'))) {
                $arrJSON = array(
                    'status' => 'deleted',
                    'intIndex' => $colOrRow
                );
            } else {
                $arrJSON = array(
                    'status' => 'error',
                    'intIndex' => $colOrRow
                );
            }

            die(json_encode($arrJSON));
        }
    }

    /**
     * Generate the module
     */
    protected function compile()
    {

        global $objPage;

        // decode, if query string is encoded
        if (\Input::get('vars')) {
            $plaintext_dec = \Cipher::decrypt(\Input::get('vars'));
            $arrGet = explode('&', $plaintext_dec);
            foreach ($arrGet as $chunk) {

                $arrItem = explode('=', $chunk);
                echo $arrItem[0] . $arrItem[1];
                \Input::setGet($arrItem[0], $arrItem[1]);
            }
        }

        // Show logout form
        if (!FE_USER_LOGGED_IN) {
            die('Authorisierung fehlgeschlagen!');
        }
        $this->import('FrontendUser', 'User');


        // switch
        switch (\Input::get('do')) {
            case 'menu':

                $objController = new \MenuController();
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'start_new_voting':

                if (\Input::post('teacher') && \Input::post('class') && \Input::post('subject')) {
                    $teacher = \TeacherModel::findByUsername(\Input::post('teacher'))->id;
                    $class = \Input::post('class');
                    $subject = \Input::post('subject');

                    $url = $this->generateFrontendUrl($objPage->row(), '/do/voting_table');
                    $arrQuery = array('teacher' => $teacher, 'subject' => $subject, 'class' => $class);
                    $url .= setQueryString($arrQuery);
                    $this->redirect($url);
                }

                $objController = new \StartNewVotingController();
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'voting_table':

                $GLOBALS['TL_JAVASCRIPT'][] = '/system/modules/buf/assets/js/voting_table.js';
                $blnError = false;
                if (!is_numeric(\Input::get('teacher')) || !is_numeric(\Input::get('class')) || !is_numeric(\Input::get('subject'))) {
                    $blnError = true;
                }
                if (\Input::get('teacher') != $this->User->id && \Input::get('class') != $this->User->class) {
                    $blnError = true;
                }
                if ($blnError) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }

                $objController = new \VotingTableController();
                $this->Template = $objController->setTemplate($this->Template);
                $this->Template->elId = $this->id;
                break;

            case 'delete_table':
                if (\Input::get('teacher') == $this->User->id) {
                    $this->import('Database');
                    $this->Database->prepare('DELETE FROM tl_voting WHERE teacher=? AND subject=? AND class=?')->execute((int)\Input::get('teacher'), (int)\Input::get('subject'), (int)\Input::get('class'));
                }
                $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                $this->redirect($url);
                break;
        }
    }
}
