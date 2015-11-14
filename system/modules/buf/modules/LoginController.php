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
 * Class LoginController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class LoginController extends \Frontend
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

    public function authenticate()
    {
       global $objPage;
        // Login
        if (\Input::post('FORM_SUBMIT') == 'tl_login')
        {
            // Check whether username and password are set
            if (!\Input::post('username', true) || !\Input::post('password', true))
            {
                $_SESSION['LOGIN_ERROR'] = $GLOBALS['TL_LANG']['MSC']['emptyField'];
                $this->reload();
            }

            // Login and redirect
            if ($this->User->login())
            {
                $strRedirect = $this->generateFrontendUrl($objPage->row(), '/do/dashboard');
                $this->redirect($strRedirect);
            }

            $this->reload();
        }

        // Logout and redirect to the website root if the current page is protected
        if (\Input::get('act') == 'logout')
        {
            // Logout and redirect
            if ($this->User->logout())
            {
                $strRedirect = $this->generateFrontendUrl($objPage->row(), '');
                $this->redirect($strRedirect);
            }

            $this->reload();
        }

    }
    /**
     * Generate the module
     */
    public function setTemplate($objTemplate)
    {

        $blnHasError = false;

        if (!empty($_SESSION['TL_ERROR']))
        {
            $blnHasError = true;
            $_SESSION['LOGIN_ERROR'] = $_SESSION['TL_ERROR'][0];
            $_SESSION['TL_ERROR'] = array();
        }

        if (isset($_SESSION['LOGIN_ERROR']))
        {
            $blnHasError = true;
            $objTemplate->message = $_SESSION['LOGIN_ERROR'];
            unset($_SESSION['LOGIN_ERROR']);
        }

        $objTemplate->hasError = $blnHasError;
        $objTemplate->username = $GLOBALS['TL_LANG']['MSC']['username'];
        $objTemplate->password = $GLOBALS['TL_LANG']['MSC']['password'][0];
        $objTemplate->action = ampersand(\Environment::get('indexFreeRequest'));
        $objTemplate->slabel = specialchars($GLOBALS['TL_LANG']['MSC']['login']);
        $objTemplate->value = specialchars(\Input::post('username'));
        $objTemplate->autologin = ($this->autologin && $GLOBALS['TL_CONFIG']['autologin'] > 0);
        $objTemplate->autoLabel = $GLOBALS['TL_LANG']['MSC']['autologin'];


        return $objTemplate;

    }


}
