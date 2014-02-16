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
 * Class MenuController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class MenuController extends \Frontend
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

              $objTemplate->hrefNewVoting = $this->generateFrontendUrl($objPage->row(), '/do/start_new_voting');
              return $objTemplate;
       }
}
