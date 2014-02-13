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
 * Back end modules
 */
$GLOBALS['BE_MOD']['buf'] = array(

       // Beurteilen Und Foerdern  modules

       'class' => array('tables' => array('tl_class')), 'student' => array('tables' => array('tl_student')), 'voting' => array('tables' => array('tl_voting')), 'subject' => array('tables' => array('tl_subject')));

/**
 * Front end modules
 */
$GLOBALS['FE_MOD']['beurteilenfoerdern'] = array('mod_beurteilen_und_foerdern' => 'MainController');

