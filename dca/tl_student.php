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
 * Table tl_member
 */
$GLOBALS['TL_DCA']['tl_student'] = array
(

    // Config
    'config' => array
    (
        'dataContainer' => 'Table',
        'enableVersioning' => true,
        'buf_ptable' => array('tl_class'),
        'buf_ctable' => array('tl_voting'),
        'sql' => array
        (
            'keys' => array
            (
                'id' => 'primary',
                'class' => 'index'
            )
        )
    ),

    // List
    'list' => array
    (
        'sorting' => array
        (
            'mode' => 2,
            'fields' => array('gender,lastname,firstname DESC'),
            'flag' => 1,
            'panelLayout' => 'filter;sort,search,limit'
        ),
        'label' => array
        (
            'fields' => array('id', 'lastname', 'firstname', 'class'),
            'showColumns' => true,
        ),
        'global_operations' => array
        (
            'all' => array
            (
                'label' => &$GLOBALS['TL_LANG']['MSC']['all'],
                'href' => 'act=select',
                'class' => 'header_edit_all',
                'attributes' => 'onclick="Backend.getScrollOffset()" accesskey="e"'
            )
        ),
        'operations' => array
        (
            'edit' => array
            (
                'label' => &$GLOBALS['TL_LANG']['tl_member']['edit'],
                'href' => 'act=edit',
                'icon' => 'edit.gif'
            ),
            'copy' => array
            (
                'label' => &$GLOBALS['TL_LANG']['tl_member']['copy'],
                'href' => 'act=copy',
                'icon' => 'copy.gif'
            ),
            'delete' => array
            (
                'label' => &$GLOBALS['TL_LANG']['tl_member']['delete'],
                'href' => 'act=delete',
                'icon' => 'delete.gif',
                'attributes' => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
            ),
            'show' => array
            (
                'label' => &$GLOBALS['TL_LANG']['tl_member']['show'],
                'href' => 'act=show',
                'icon' => 'show.gif'
            )
        )
    ),

    // Palettes
    'palettes' => array
    (
        //'__selector__'                => array('login', 'assignDir'),
        'default' => '{personal_legend},gender,firstname,lastname,class',
    ),

    // Subpalettes
    'subpalettes' => array
    ( //'login'                       => 'username,password',
        //'assignDir'                   => 'homeDir'
    ),


    // Fields
    'fields' => array
    (
        'id' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_student']['id'],
            'sql' => "int(10) unsigned NOT NULL auto_increment"
        ),
        'tstamp' => array
        (
            'search' => true,
            'sorting' => true,
            'sql' => "int(10) unsigned NOT NULL default '0'"
        ),
        'gender' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_student']['gender'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'inputType' => 'select',
            'options' => array('male', 'female'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(32) NOT NULL default ''"
        ),
        'lastname' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_student']['lastname'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'text',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "varchar(255) NOT NULL default ''"
        ),
        'firstname' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_student']['firstname'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'text',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "varchar(255) NOT NULL default ''"
        ),
        'class' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_student']['class'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'select',
            'options_callback' => function () {
                $options = array();
                $objClass = \ClassModel::findAll();
                while ($objClass->next()) {
                    $options[$objClass->id] = $objClass->name;
                }
                return $options;
            },
            'foreignKey' => 'tl_class.id',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        )
    )

);


