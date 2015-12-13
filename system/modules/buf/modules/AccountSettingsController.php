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
 * Class AccountSettingsController
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class AccountSettingsController extends \Frontend
{
    /**
     * @var $objMainController
     */
    protected $objMainController;

    public function __construct($objMainController)
    {
        $this->objMainController = $objMainController;
        $this->import('FrontendUser', 'User');
        return parent::__construct();
    }

    /**
     * Generate the module
     */
    public function setTemplate($objTemplate)
    {
        global $objPage;
        $this->import('FrontendUser', 'User');
        $objTeacher = \TeacherModel::findByPk($this->User->id);

        /** EmailField **/
        $widget = new \TextField();
        $widget->value = $objTeacher->email;
        $widget->id = 'email';
        $widget->name = 'email';
        $widget->label = 'E-Mail-Adresse';
        $widget->placeholder = 'vorname.nachname@ettiswil.educanet2.ch';
        $widget->mandatory = true;
        $widget->rgxp = 'email';
        if ($_POST) {
            $widget->validate();
            if (!$widget->hasErrors()) {
                $objTeacher->email = $widget->value;
                $objTeacher->save();
                $objTemplate->submitted = true;
            }else{
                $objTemplate->submitted = false;
            }
        }
        $objTemplate->emailLabel = $widget->generateLabel();
        $objTemplate->email = $widget->generateWithError(true);


        /** PasswordField **/
        $widget = new \Password();
        $widget->id = 'password';
        $widget->name = 'password';
        $widget->label = 'Passwort';
        $widget->placeholder = '********';
        if ($_POST) {
            $widget->validate();
            if (!$widget->hasErrors()) {
                $objTeacher->password = $widget->value;
                $objTeacher->save();
                $objTemplate->submitted = true;
            }else{
                $objTemplate->submitted = false;
            }
        }
        $objTemplate->passwordLabel = $widget->generateLabel();
        $objTemplate->password = $widget->generateWithError(true);
        $objTemplate->confirmationLabel = $widget->generateLabel();
        $objTemplate->confirmation = $widget->generateConfirmation();

        /** PasswordField **/
        $widget = new \CheckBox();
        $widget->id = 'adviceOnNewComments';
        $widget->name = 'adviceOnNewComments';
        $arrOptions = array(
            array(
                'checked' => '1',
                'value'=> '1',
                //'default' => true,
                'label'=>'benachrichtigen'
            ));
        $widget->options = $arrOptions;

        $widget->label = 'Bei neuen Kommentaren benachrichtigen (gilt nur für Klassenlehrer)';
        if ($_POST) {
            $widget->validate();
            if (!$widget->hasErrors()) {
                $objTeacher->adviceOnNewComments = $widget->value;
                $objTeacher->save();
                $objTemplate->submitted = true;
            }else{
                $objTemplate->submitted = false;
            }
        }
        $widget->value = $objTeacher->adviceOnNewComments;

        $objTemplate->adviceOnNewCommentsLabel = $widget->generateLabel();
        $objTemplate->adviceOnNewComments = $widget->parse();


        // other properties
        $objTemplate->backLink = $this->generateFrontendUrl($objPage->row(), '/do/dashboard');
        $objTemplate->method = 'post';
        $objTemplate->formId = 'tl_member_account_settings';
        $objTemplate->slabel = specialchars($GLOBALS['TL_LANG']['MSC']['saveData']);
        $objTemplate->action = $this->generateFrontendUrl($objPage->row(), '/do/account_settings') . setQueryString(array('act' => 'set_password'));
        $objTemplate->enctype = 'application/x-www-form-urlencoded';

        return $objTemplate;
    }
}