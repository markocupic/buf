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
$GLOBALS['TL_DCA']['tl_voting'] = array
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
            'label_callback' => array('tl_voting', 'labelCallback')
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
        'default' => 'student,class,subject,teacher,tstamp,skill1,skill2,skill3,skill4,skill5,skill6,skill7,skill8',
    ),

    // Fields
    'fields' => array
    (
        'id' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['id'],
            'search' => true,
            'sorting' => true,
            'sql' => "int(10) unsigned NOT NULL auto_increment"
        ),
        'tstamp' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['tstamp'],
            'flag' => 6,
            'search' => true,
            'sorting' => true,
            'sql' => "int(10) unsigned NOT NULL default '0'"
        ),
        'student' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['student'],
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
            'buf_linksTo' => 'tl_student.id',
            'foreignKey' => 'tl_student.CONCAT(firstname, " " , lastname)',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'teacher' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['teacher'],
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
            'buf_linksTo' => 'tl_member.id',
            'foreignKey' => 'tl_member.CONCAT(firstname, " " , lastname)',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'subject' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['subject'],
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
            'buf_linksTo' => 'tl_subject.id',
            'foreignKey' => 'tl_subject.name',
            'eval' => array('mandatory' => true, 'maxlength' => 255),
            'sql' => "int(10) unsigned NOT NULL default '0'",
            'relation' => array('type' => 'belongsTo', 'load' => 'lazy')
        ),
        'skill1' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill1'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill2' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill2'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill3' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill3'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill4' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill4'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill5' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill5'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill6' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill6'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill7' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill7'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        ),
        'skill8' => array
        (
            'label' => &$GLOBALS['TL_LANG']['tl_voting']['skill8'],
            'exclude' => true,
            'inputType' => 'select',
            'options' => array('0', '1', '2', '3', '4'),
            'reference' => &$GLOBALS['TL_LANG']['MSC'],
            'eval' => array('mandatory' => true, 'includeBlankOption' => false),
            'sql' => "varchar(1) NOT NULL default '0'"
        )
    )
);


/**
 * Provide miscellaneous methods that are used by the data configuration array.
 *
 * @author Leo Feyer <https://github.com/leofeyer>
 */
class tl_voting extends Backend
{

    /**
     * Add an image to each record
     * @param array $row
     * @param string $label
     * @param DataContainer $dc
     * @param array $args
     *
     * @return array
     */
    public function labelCallback($row, $label, DataContainer $dc, $args)
    {
        $args[1] = '(' . \StudentModel::getClassnameFromStudentId($args[1]) . ') ' . \StudentModel::getFullName($args[1]);
        $args[2] = \TeacherModel::getFullName($args[2]);

        return $args;
    }

}

