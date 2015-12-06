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
$GLOBALS['TL_DCA']['tl_comment'] = array
(

    // Config
    'config' => array
    (
        'dataContainer' => 'Table',
        'enableVersioning' => true,
        'buf_ptable' => array('tl_member', 'tl_student', 'tl_subject'),
        'sql' => array
        (
            'keys' => array
            (
                'id' => 'primary',
                'teacher' => 'index',
                'student' => 'index',
                'subject' => 'index',
            )
        )
    ),

    // List
    'list' => array
    (
        'sorting' => array
        (
            'mode' => 2,
            'fields' => array('student,teacher DESC'),
            'flag' => 1,
            'panelLayout' => 'filter;sort,search,limit'
        ),
        'label' => array
        (
            'fields' => array('id', 'student', 'teacher', 'tstamp'),
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
        'default' => 'student,subject,teacher,tstamp,comment',
    ),

    // Fields
    'fields' => array
    (
        'id' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['id'],
            'sql' => "int(10) unsigned NOT NULL auto_increment"
        ),
        'tstamp' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['tstamp'],
            'search' => true,
            'sorting' => true,
            'flag' => 6,
            'eval' => array('rgxp' => 'datim'),
            'sql' => "int(10) unsigned NOT NULL default '0'"
        ),
        'student' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['student'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'select',
            'options_callback' => function () {
                $options = array();
                $objStudent = \StudentModel::findAll(array('order' => 'class,gender,lastname,firstname'));
                while ($objStudent->next()) {
                    $options[$objStudent->id] = $objStudent->firstname . ' ' . $objStudent->lastname;
                }
                return $options;
            },
            'foreignKey' => 'tl_student.id',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'teacher' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['teacher'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'select',
            'options_callback' => function () {
                $options = array();
                $objTeacher = \TeacherModel::findBy('isTeacher','1');
                while ($objTeacher->next()) {
                    $options[$objTeacher->id] = $objTeacher->firstname . ' ' . $objTeacher->lastname;
                }
                return $options;
            },
            'foreignKey' => 'tl_member.id',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'subject' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['subject'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'select',
            'options_callback' => function () {
                $options = array();
                $objSubject = \SubjectModel::findAll();
                while ($objSubject->next()) {
                    $options[$objSubject->id] = $objSubject->name . ' (' . $objSubject->acronym . ')';
                }
                return $options;
            },
            'foreignKey' => 'tl_subject.id',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'comment' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_comment']['comment'],
            'exclude' => true,
            'search' => true,
            'sorting' => true,
            'flag' => 1,
            'inputType' => 'textarea',
            'eval' => array('mandatory' => false),
            'sql' => "mediumtext NULL"
        )
    )
);



