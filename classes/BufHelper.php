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

class BufHelper extends \Controller
{

    /**
     * Contao replaceInsertTags Callback
     * @param $strTag
     * @return bool
     */
    public function bufReplaceInsertTags($strTag)
    {
        global $objPage;
        if ($strTag == 'buf::name_school') {
            if (trim($GLOBALS['TL_CONFIG']['buf_name_school']) != '') {
                return $GLOBALS['TL_CONFIG']['buf_name_school'];
            }
        }

        if ($strTag == 'buf::menu_link') {
            $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/menu');
            return sprintf('<a href="%s" title="zurück zum Menü" class="icon_back">Zurück zum Menü</a>', $url);
        }

        if ($strTag == 'buf::logout_user') {
            // Login and redirect
            if (FE_USER_LOGGED_IN) {
                $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/login') . setQueryString(array('act' => 'logout'));
                return '<a href="' . $url . '" title="logout" class="icon_logout">Logout</a>';
            }
        }
        return false;
    }


    /**
     * assure referential integrity
     * method called as reviseTableHook
     * -->
     * parent table:
     * add one ore more child tables in the config section of the DCA
     * $GLOBALS['TL_DCA']['tl_parent']['config']['buf_ctable'] = array('tl_child1', 'tl_child2');
     * -->
     * child table:
     * add the the foreign key in the fields section of the DCA
     * $GLOBALS['TL_DCA']['tl_child1']['fields']['someField']['foreignKey'] = 'tl_parent.id';
     * $GLOBALS['TL_DCA']['tl_child2']['fields']['someField']['foreignKey'] = 'tl_parent.id';
     * -->
     * @param string $table
     * @param string $new_records
     * @param string $parent_table
     * @param string $child_tables
     * @return bool
     */
    public static function checkForReferentialIntegrity($table = '', $new_records = '', $parent_table = '', $child_tables = '')
    {
        // Delete all records of the child table that are not related to the current table
        $arrCtable = $GLOBALS['TL_DCA'][$table]['config']['buf_ctable'];

        if (is_array($arrCtable)) {
            // traverse each child table and delete all records of the child table that are not related to the current table
            foreach ($arrCtable as $ctable) {
                $objDC = new self;
                $objDC->loadDataContainer($ctable, true);
                if (!isset($GLOBALS['TL_DCA'][$ctable]['fields'])) continue;
                foreach ($GLOBALS['TL_DCA'][$ctable]['fields'] as $cfield => $arrField) {
                    if ($arrField['foreignKey'] != '') {
                        $arrForeignKey = explode('.', $arrField['foreignKey']);
                        $pfield = $arrForeignKey[1];
                        $ptable = $arrForeignKey[0];
                        if ($arrForeignKey[0] == '' || $arrForeignKey[1] == '') continue;
                        $db = \Database::getInstance();
                        $query = "DELETE FROM " . $ctable . " WHERE " . $ctable . '.' . $cfield . " NOT IN (SELECT " . $pfield . " FROM " . $ptable . ")";
                        $objStmt = $db->prepare($query)->execute();
                        if ($objStmt->affectedRows > 0) {
                            $method = __FUNCTION__;
                            while (self::$method($ctable) === true) {
                                self::$method($ctable);
                            }
                            //return true for a reload
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /**
     * method called as reviseTableHook
     * -->
     * @param string $table
     * @param string $new_records
     * @param string $parent_table
     * @param string $child_tables
     * @return bool
     */
    public static function bufReviseTableHook($table = '', $new_records = '', $parent_table = '', $child_tables = '')
    {
        // at minimum one skill must be > 0
        $db = \Database::getInstance();
        $objStmt = $db->execute('DELETE FROM tl_voting WHERE (skill1 + skill2 + skill3 + skill4 + skill5 + skill6 + skill7 + skill8) < 1');
        if ($objStmt->affectedRows > 0) {
            return true;
        }

        // set tl_member.isClassTeacher to '' if the assigned class doesn't exist
        $set = array('class' => NULL, 'isClassTeacher' => '');
        $db = \Database::getInstance();
        $objStmt = $db->prepare('UPDATE tl_member %s WHERE tl_member.class NOT IN (SELECT id FROM tl_class)')->set($set)->execute();
        if ($objStmt->affectedRows > 0) {
            return true;
        }

        return false;
    }



    /**
     * onload_callback for tl_member
     */
    public function onloadCallbackTlMember()
    {
        $db = \Database::getInstance();
        $set = array('class' => NULL, 'isClassTeacher' => '');
        // zero is not a valid value for the class field
        $db->prepare('UPDATE tl_member %s WHERE class < ? OR isClassTeacher = ?')->set($set)->execute(1, '');
    }

    /**
     * generate data records for testing
     */
    public
    static function generateRandomDataRecords()
    {
        $db = \Database::getInstance();
        for ($i = 0; $i < 10000; $i++) {
            $objMember = $db->query('SELECT id FROM tl_member ORDER BY RAND() LIMIT 1');
            $objSubject = $db->query('SELECT id FROM tl_subject ORDER BY RAND() LIMIT 1');
            $objStudent = $db->query('SELECT id FROM tl_student ORDER BY RAND() LIMIT 1');
            $set = array('teacher' => $objMember->id, 'student' => $objStudent->id, 'subject' => $objSubject->id, 'tstamp' => 999, 'skill1' => 1, 'skill2' => 2, 'skill3' => 3, 'skill4' => 4, 'skill5' => 1, 'skill6' => 1, 'skill7' => 1, 'skill8' => 1);
            $objRand = $db->prepare('SELECT id FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($objMember->id, $objStudent->id, $objSubject->id);
            if (!$objRand->numRows) {
                $db->prepare('INSERT INTO tl_voting %s')->set($set)->execute();
            }
        }
    }

    /**
     * delete random data records
     */
    public static function deleteRandomDataRecords()
    {
        $db = \Database::getInstance();
        $db->query("DELETE FROM tl_voting WHERE tstamp='999'");
    }
}
