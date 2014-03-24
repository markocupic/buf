<?php

/**
 * Contao Open Source CMS
 * Copyright (c) 2005-2014 Leo Feyer
 * @package BUF (Beurteilen und Fördern)
 * @author Marko Cupic m.cupic@gmx.ch, 2014
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

    public function generate()
    {
        global $objPage;

        // dependencies
        if (!file_exists(TL_ROOT . '/ajax.php')) {
            die(utf8_decode('Die Erweiterung "Beurteilen Und Fördern" ist abhängig von der Erweiterung "Ajax" von A. Schempp. Bitte die Erweiterung nachinstallieren!'));
        }

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

            if (!FE_USER_LOGGED_IN && \Input::get('do') != 'login') {
                \Input::resetCache();
                $url = $this->generateFrontendUrl($objPage->row(), '/do/login');
                $this->redirect($url);
            } elseif (!FE_USER_LOGGED_IN && \Input::get('do') == 'login') {
                $this->strTemplate = \Input::get('do');
            } elseif (FE_USER_LOGGED_IN && !\Input::get('do')) {
                \Input::resetCache();
                $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                $this->redirect($url);
            } elseif (FE_USER_LOGGED_IN && \Input::get('do') != '') {
                if (\Input::get('do') == 'print_table' || \Input::get('do') == 'print_tally_sheet') {
                    $this->strTemplate = null;
                } else {
                    $this->strTemplate = \Input::get('do');
                }
            } else {
                // logout and redirect to the login form
                if (FE_USER_LOGGED_IN) {
                    $this->import('FrontendUser', 'User');
                    $this->User->logout();
                }
                \Input::resetCache();
                $url = $this->generateFrontendUrl($objPage->row(), '/do/login');
                $this->redirect($url);
            }
        }

        return parent::generate();
    }

    /**
     * Method called on Ajax Requests (ajax.php)
     */
    public function generateAjax()
    {
        if (!FE_USER_LOGGED_IN) {
            return;
        }
        $this->import('FrontendUser', 'User');


        // edit student
        if (\Input::get('act') == 'update_classlist') {
            $arrJSON = array();

            if (\Validator::isAlphabetic(\Input::post('lastname')) && \Validator::isAlphabetic(\Input::post('firstname'))) {
                $objStudent = \StudentModel::findByPk(\Input::post('id'));
                if ($objStudent !== null) {
                    $objStudent->lastname = \Input::post('lastname');
                    $objStudent->firstname = \Input::post('firstname');
                    $objStudent->gender = \Input::post('gender');
                    $objStudent->tstamp = time();
                    $objStudent->save();
                    $arrJSON['status'] = 'success';
                }
            } else {
                $arrJSON['status'] = 'error';
                $arrJSON['message'] = 'Ungültige Zeichenkette!';
            }

            die(json_encode($arrJSON));
        }

        // delete a student
        if (\Input::get('act') == 'delete_student') {
            $arrJSON = array();
            $arrJSON['status'] = 'error';
            if (\TeacherModel::getOwnClass()) {
                // delete student
                $objDb = \Database::getInstance()->prepare('DELETE FROM tl_student WHERE id=?')->execute(\Input::post('id'));
                if ($objDb->affectedRows) {
                    $arrJSON['status'] = 'success';
                }
                // delete referenced votings
                \Database::getInstance()->prepare('DELETE FROM tl_voting WHERE student=?')->execute(\Input::post('id'));

            }
            die(json_encode($arrJSON));
        }

        // reset the voting table
        if (\Input::get('act') == 'reset_table') {
            $arrTable = \VotingModel::getRows(\Input::get('class'), \Input::get('subject'), \Input::get('teacher'));
            $arrJSON = array('status' => 'success', 'rows' => $arrTable);
            die(json_encode($arrJSON));
        }

        // update voting table
        if (\Input::get('act') == 'update') {
            $rating = \VotingModel::update(\Input::post('student'), \Input::post('teacher'), \Input::post('subject'), \Input::post('skill'), \Input::post('value'));
            if ($rating) {
                $arrJSON = array('status' => 'success', 'rating' => $rating, 'message' => 'Submitted successfully.');
            } else {
                $arrJSON = array('status' => 'success', 'rating' => '', 'message' => 'Invalid value submitted: ' . \Input::post('value'));
            }
            die(json_encode($arrJSON));
        }

        // update teacher's deviation tolerance
        if (\Input::get('act') == 'updateTeachersDeviationTolerance') {

            $arrJSON = array('status' => 'error', 'deviation' => '');
            if (is_numeric(\Input::post('tolerance')) && \Input::post('tolerance') > 0 && \Input::post('tolerance') < 3.1) {
                $objTeacher = \TeacherModel::findByPk($this->User->id);
                if ($objTeacher !== null) {
                    $objTeacher->deviation = \Input::post('tolerance');
                    $objTeacher->save();
                    $arrJSON['status'] = 'success';
                    $arrJSON['deviation'] = \Input::post('tolerance');
                }
            }
            die(json_encode($arrJSON));
        }

        // delete all votings in a column or in a row
        if (\Input::get('act') == 'delete_row_or_col') {
            $mode = \Input::post('mode');
            $colOrRow = \Input::post('colOrRow');
            if (\VotingModel::deleteRowOrCol($mode, $colOrRow, \Input::post('teacher'), \Input::post('subject'), \Input::post('class'))) {
                $arrJSON = array('status' => 'deleted', 'intIndex' => $colOrRow);
            } else {
                $arrJSON = array('status' => 'error', 'intIndex' => $colOrRow);
            }

            die(json_encode($arrJSON));
        }
        // appear the info Box in the tally sheet mode
        if (\Input::get('act') == 'tally_sheet') {
            if (\VotingModel::getInfoBox(\Input::post('studentId'), \Input::post('skillId'))) {
                $arrJSON = array('status' => 'success', 'html' => \VotingModel::getInfoBox(\Input::post('studentId'), \Input::post('skillId')));
            } else {
                $arrJSON = array('status' => 'error', 'html' => '');
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
        $this->import('FrontendUser', 'User');


        // decode, if query string is encoded
        if (\Input::get('vars') && $GLOBALS['TL_CONFIG']['buf_encode_params']) {
            $plaintext_dec = \Cipher::decrypt(\Input::get('vars'));
            $arrGet = explode('&', $plaintext_dec);
            foreach ($arrGet as $chunk) {
                $arrItem = explode('=', $chunk);
                \Input::setGet($arrItem[0], $arrItem[1]);
            }
        }


        // switch
        switch (\Input::get('do')) {
            case 'login':
                $objController = new \LoginController($this);
                $objController->authenticate();
                $this->Template = $objController->setTemplate($this->Template);
                break;


            case 'menu':
                $objController = new \MenuController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'start_new_voting':
                $objController = new \StartNewVotingController($this);
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

                $objController = new \VotingTableController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'print_table':
                if (\TeacherModel::getOwnClass() != \Input::get('class') && \Input::get('teacher') != $this->User->id) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }
                $objController = new \FpdfController($this);
                $objController->printTable();
                break;

            case 'print_tally_sheet':
                if (!\TeacherModel::getOwnClass()) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }
                $objController = new \FpdfController($this);
                $objController->printTallySheet();
                break;

            case 'delete_table':
                if (\Input::get('teacher') == $this->User->id) {
                    $this->import('Database');
                    $this->Database->prepare('DELETE FROM tl_voting WHERE teacher=? AND subject=? AND student IN (SELECT id FROM tl_student WHERE class=?)')->execute((int)\Input::get('teacher'), (int)\Input::get('subject'), (int)\Input::get('class'));
                }
                $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                $this->redirect($url);
                break;

            case 'account_settings':
                $objController = new \AccountSettingsController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'edit_classlist':
                if (!\TeacherModel::getOwnClass()) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }
                $objController = new \EditClasslistController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'average_table':
                if (!\TeacherModel::getOwnClass()) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }
                $objController = new \AverageTableController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

            case 'tally_sheet':
                if (!\TeacherModel::getOwnClass()) {
                    $url = $this->generateFrontendUrl($objPage->row(), '/do/menu');
                    $this->redirect($url);
                }
                $GLOBALS['TL_JAVASCRIPT'][] = '/system/modules/buf/assets/js/tally_sheet.js';
                $objController = new \TallySheetController($this);
                $this->Template = $objController->setTemplate($this->Template);
                break;

        }
    }
}
