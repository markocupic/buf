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
 * Class AccountSettingsController
 *
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

        switch (\Input::get('act')) {
            case 'set_password':
                $this->import('FrontendUser', 'User');

                $GLOBALS['TL_LANGUAGE'] = $objPage->language;

                \System::loadLanguageFile('tl_member');
                $this->loadDataContainer('tl_member');

                $objTemplate->fields = '';
                $objTemplate->tableless = $this->tableless;

                $doNotSubmit = false;
                $row = 0;

                $blnModified = false;
                $objMember = \MemberModel::findByPk($this->User->id);

                $arrFields = array('password');
                // Build the form
                foreach ($arrFields as $field) {
                    $arrData = & $GLOBALS['TL_DCA']['tl_member']['fields'][$field];
                    $strClass = $GLOBALS['TL_FFL'][$arrData['inputType']];

                    $strGroup = $arrData['eval']['feGroup'];

                    $arrData['eval']['required'] = true;
                    $arrData['eval']['tableless'] = false;

                    $varValue = $this->User->$field;

                    $objWidget = new $strClass($strClass::getAttributesFromDca($arrData, $field, $varValue, '', '', $this));

                    $objWidget->storeValues = true;
                    $objWidget->rowClass = 'row_' . $row . (($row == 0) ? ' row_first' : '') . ((($row % 2) == 0) ? ' even' : ' odd');

                    // Increase the row count if it is a password field
                    if ($objWidget instanceof \FormPassword) {
                        ++$row;
                        $objWidget->rowClassConfirm = 'row_' . $row . ((($row % 2) == 0) ? ' even' : ' odd');
                    }

                    // Validate the form data
                    if (\Input::post('FORM_SUBMIT') == 'tl_member_set_password') {
                        $objWidget->validate();
                        $varValue = $objWidget->value;

                        // Do not submit the field if there are errors
                        if ($objWidget->hasErrors()) {
                            $doNotSubmit = true;
                        } elseif ($objWidget->submitInput()) {
                            // Store the form data
                            $_SESSION['FORM_DATA'][$field] = $varValue;

                            // Set the correct empty value (see #6284, #6373)
                            if ($varValue === '') {
                                $varValue = $objWidget->getEmptyValue();
                            }

                            // Set the new value
                            $this->User->$field = $varValue;

                            // Set the new field in the member model
                            $blnModified = true;
                            $objMember->$field = $varValue;
                        }
                    }


                    $temp = $objWidget->parse();

                    $objTemplate->fields .= $temp;
                    $arrFields[$strGroup][$field] .= $temp;
                    ++$row;
                }

                // Save the model
                if ($blnModified) {
                    $objMember->save();
                    $objTemplate->submitted = true;
                }

                $objTemplate->fields = $temp;
                $objTemplate->backLink = $this->generateFrontendUrl($objPage->row(), '/do/menu');

                $objTemplate->hasError = $doNotSubmit;

                $objTemplate->method = 'post';
                $objTemplate->formId = 'tl_member_set_password';
                $objTemplate->slabel = specialchars($GLOBALS['TL_LANG']['MSC']['saveData']);
                $objTemplate->action = $this->generateFrontendUrl($objPage->row(), '/do/account_settings') . setQueryString(array('act' => 'set_password'));
                $objTemplate->enctype = 'application/x-www-form-urlencoded';
                $objTemplate->rowLast = 'row_' . $row . ((($row % 2) == 0) ? ' even' : ' odd');


        }
        return $objTemplate;
    }
}