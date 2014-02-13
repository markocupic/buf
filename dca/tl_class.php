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
 * Table tl_member
 */
$GLOBALS['TL_DCA']['tl_class'] = array(

       // Config
       'config' => array('dataContainer' => 'Table', 'enableVersioning' => true, 'onsubmit_callback' => array( //array('tl_member', 'storeDateAdded'),
              //array('tl_member', 'checkRemoveSession')
       ), 'ondelete_callback' => array( //array('tl_member', 'removeSession')
       ), 'onload_callback' => array(array('tl_class', 'changeToInnoDb')), 'sql' => array('keys' => array('id' => 'primary', 'name' => 'unique'))),

       // List
       'list' => array('sorting' => array('mode' => 2, 'fields' => array('name DESC'), 'flag' => 1, 'panelLayout' => 'filter;sort,search,limit'), 'label' => array('fields' => array('id', 'name'), 'showColumns' => true, //'label_callback'          => array('tl_member', 'addIcon')
       ), 'global_operations' => array('all' => array('label' => &$GLOBALS['TL_LANG']['MSC']['all'], 'href' => 'act=select', 'class' => 'header_edit_all', 'attributes' => 'onclick="Backend.getScrollOffset()" accesskey="e"')), 'operations' => array('edit' => array('label' => &$GLOBALS['TL_LANG']['tl_member']['edit'], 'href' => 'act=edit', 'icon' => 'edit.gif'), 'copy' => array('label' => &$GLOBALS['TL_LANG']['tl_member']['copy'], 'href' => 'act=copy', 'icon' => 'copy.gif'), 'delete' => array('label' => &$GLOBALS['TL_LANG']['tl_member']['delete'], 'href' => 'act=delete', 'icon' => 'delete.gif', 'attributes' => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'), 'show' => array('label' => &$GLOBALS['TL_LANG']['tl_member']['show'], 'href' => 'act=show', 'icon' => 'show.gif'))),

       // Palettes
       'palettes' => array( //'__selector__'                => array('login', 'assignDir'),
              'default' => '{personal_legend},name',),

       // Subpalettes
       'subpalettes' => array( //'login'                       => 'username,password',
              //'assignDir'                   => 'homeDir'
       ),


       // Fields
       'fields' => array('id' => array('sql' => "int(10) unsigned NOT NULL auto_increment"), 'tstamp' => array('sql' => "int(10) unsigned NOT NULL default '0'"), 'name' => array('label' => &$GLOBALS['TL_LANG']['tl_member']['firstname'], 'exclude' => true, 'search' => true, 'sorting' => true, 'flag' => 1, 'inputType' => 'text', 'eval' => array('mandatory' => true, 'maxlength' => 255), 'sql' => "varchar(255) NOT NULL default ''"))

);

/**
 * Class tl_member
 *
 * Provide miscellaneous methods that are used by the data configuration array.
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class tl_class extends Backend
{

       /**
        * Import the back end user object
        */
       public function __construct()
       {
              parent::__construct();
              $this->import('BackendUser', 'User');
       }

       /**
        * change Engine From MyIsam To InnoDb
        */
       public function changeToInnoDb()
       {
              $db = Database::getInstance();
              $db->query('ALTER TABLE tl_class ENGINE = InnoDB;');
              $db->query('ALTER TABLE tl_member ENGINE = InnoDB;');
              $db->query('ALTER TABLE tl_student ENGINE = InnoDB;');
              $db->query('ALTER TABLE tl_voting ENGINE = InnoDB;');
              $db->query('ALTER TABLE tl_subject ENGINE = InnoDB;');
       }
}

