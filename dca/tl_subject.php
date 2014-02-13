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
$GLOBALS['TL_DCA']['tl_subject'] = array
(

       // Config
       'config' => array
       (
              'dataContainer'               => 'Table',
              'enableVersioning'            => true,
              'onsubmit_callback' => array
              (
                     //array('tl_member', 'storeDateAdded'),
                     //array('tl_member', 'checkRemoveSession')
              ),
              'ondelete_callback' => array
              (
                     //array('tl_member', 'removeSession')
              ),
              'onload_callback' => array
              (
                     //array('tl_class', 'changeToInnoDb')
              ),
              'sql' => array
              (
                     'keys' => array
                     (
                            'id' => 'primary',
                            'acronym' => 'unique'
                     )
              )
       ),

       // List
       'list' => array
       (
              'sorting' => array
              (
                     'mode'                    => 2,
                     'fields'                  => array('name DESC'),
                     'flag'                    => 1,
                     'panelLayout'             => 'filter;sort,search,limit'
              ),
              'label' => array
              (
                     'fields'                  => array('id', 'acronym', 'name'),
                     'showColumns'             => true,
                     //'label_callback'          => array('tl_member', 'addIcon')
              ),
              'global_operations' => array
              (
                     'all' => array
                     (
                            'label'               => &$GLOBALS['TL_LANG']['MSC']['all'],
                            'href'                => 'act=select',
                            'class'               => 'header_edit_all',
                            'attributes'          => 'onclick="Backend.getScrollOffset()" accesskey="e"'
                     )
              ),
              'operations' => array
              (
                     'edit' => array
                     (
                            'label'               => &$GLOBALS['TL_LANG']['tl_member']['edit'],
                            'href'                => 'act=edit',
                            'icon'                => 'edit.gif'
                     ),
                     'copy' => array
                     (
                            'label'               => &$GLOBALS['TL_LANG']['tl_member']['copy'],
                            'href'                => 'act=copy',
                            'icon'                => 'copy.gif'
                     ),
                     'delete' => array
                     (
                            'label'               => &$GLOBALS['TL_LANG']['tl_member']['delete'],
                            'href'                => 'act=delete',
                            'icon'                => 'delete.gif',
                            'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
                     ),
                     'show' => array
                     (
                            'label'               => &$GLOBALS['TL_LANG']['tl_member']['show'],
                            'href'                => 'act=show',
                            'icon'                => 'show.gif'
                     )
              )
       ),

       // Palettes
       'palettes' => array
       (
              'default'                     => 'acronym,name',
       ),



       // Fields
       'fields' => array
       (
              'id' => array
              (
                     'sql'                     => "int(10) unsigned NOT NULL auto_increment"
              ),
              'tstamp' => array
              (
                     'sql'                     => "int(10) unsigned NOT NULL default '0'"
              ),
              'name' => array
              (
                     'label'                   => &$GLOBALS['TL_LANG']['tl_subject']['name'],
                     'exclude'                 => true,
                     'search'                  => true,
                     'sorting'                 => true,
                     'flag'                    => 1,
                     'inputType'               => 'text',
                     'eval'                    => array('mandatory'=>true, 'maxlength'=>255),
                     'sql'                     => "varchar(255) NOT NULL default ''"
              ),
              'acronym' => array
              (
                     'label'                   => &$GLOBALS['TL_LANG']['tl_subject']['acronym'],
                     'exclude'                 => true,
                     'search'                  => true,
                     'sorting'                 => true,
                     'flag'                    => 1,
                     'inputType'               => 'text',
                     'eval'                    => array('mandatory'=>true, 'maxlength'=>5),
                     'sql'                     => "varchar(5) NOT NULL default ''"
              )
       )

);



