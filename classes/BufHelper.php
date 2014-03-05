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

class BufHelper
{

       /**
        * Contao replaceInsertTags Callback
        * @param $strTag
        * @return bool
        */
       public function replaceInsertTags($strTag)
       {
              global $objPage;
              if ($strTag == 'buf::name_school')
              {
                     if (trim($GLOBALS['TL_CONFIG']['buf_name_school']) != '')
                     {
                            return $GLOBALS['TL_CONFIG']['buf_name_school'];
                     }
              }

              if ($strTag == 'buf::menu_link')
              {
                     $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/menu');
                     return sprintf('<a href="%s" title="zurück zum Menü" class="icon_back">Zurück zum Menü</a>', $url);
              }

              if ($strTag == 'buf::logout_user')
              {
                     // Login and redirect
                     if (FE_USER_LOGGED_IN)
                     {
                            $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/login') . setQueryString(array('act' => 'logout'));
                            return '<a href="' . $url . '" title="logout" class="icon_logout">Logout</a>';
                     }
              }
              return false;
       }

       /**
        * ondelete_callback for tl_member
        * @param $dc
        */
       public function ondeleteCbTeacher($dc)
       {

              $db = \Database::getInstance();
              if ($dc instanceof \DataContainer && $dc->activeRecord)
              {
                     $db->prepare('DELETE FROM tl_voting WHERE teacher = ?')->execute($dc->activeRecord->id);
              }
       }

       /**
        * ondelete_callback for tl_subject
        * @param $dc
        */
       public function ondeleteCbSubject($dc)
       {

              $db = \Database::getInstance();
              if ($dc instanceof \DataContainer && $dc->activeRecord)
              {
                     $db->prepare('DELETE FROM tl_voting WHERE subject = ?')->execute($dc->activeRecord->id);
              }
       }

       public static function reviseTables($table = '', $new_records = '', $parent_table = '', $child_tables = '')
       {
              // return true for a reload
              $db = \Database::getInstance();

              $db->execute('DELETE FROM tl_voting WHERE (skill1 + skill2 + skill3 + skill4 + skill5 + skill6 + skill7 + skill8) < 1');
              if ($db->affectedRows)
              {
                     return true;
              }

              $db->execute('DELETE FROM tl_voting WHERE tl_voting.student NOT IN (SELECT id FROM tl_student)');
              if ($db->affectedRows)
              {
                     return true;
              }

              $db->execute('DELETE FROM tl_voting WHERE tl_voting.subject NOT IN (SELECT id FROM tl_subject)');
              if ($db->affectedRows)
              {
                     return true;
              }

              $db->prepare('DELETE FROM tl_voting WHERE tl_voting.teacher NOT IN (SELECT id FROM tl_member WHERE isTeacher=?)')->execute('1');
              if ($db->affectedRows)
              {
                     return true;
              }

              $set = array('class' => NULL, 'isClassTeacher' => '');
              $db->prepare('UPDATE tl_member %s WHERE tl_member.class NOT IN (SELECT id FROM tl_class)')->set($set)->execute();
              if ($db->affectedRows)
              {
                     return true;
              }

              $db->execute('DELETE FROM tl_student WHERE tl_student.class NOT IN (SELECT id FROM tl_class)');
              if ($db->affectedRows)
              {
                     return true;
              }

              return false;
       }

       /**
        * ondelete_callback for tl_student
        * @param $dc
        */
       public function ondeleteCbStudent($dc)
       {

              $db = \Database::getInstance();
              if ($dc instanceof \DataContainer && $dc->activeRecord)
              {
                     $db->prepare('DELETE FROM tl_voting WHERE student = ?')->execute($dc->activeRecord->id);
              }
       }

       /**
        * ondelete_callback for tl_class
        * @param $dc
        */
       public function ondeleteCbClass($dc)
       {

              $db = \Database::getInstance();
              if ($dc instanceof \DataContainer && $dc->activeRecord)
              {
                     // delete all votings of the deleted class
                     $db->prepare('DELETE FROM tl_voting WHERE student IN (SELECT id FROM tl_student WHERE class=?)')->execute($dc->activeRecord->id);

                     // delete all students of the deleted class
                     $db->prepare('DELETE FROM tl_student WHERE class = ?')->execute($dc->activeRecord->id);

                     // set tl_member.class of the concerned teacher to NULL
                     $set = array('class' => NULL, 'isClassTeacher' => '');
                     // zero is not a valid value for the class field
                     $db->prepare('UPDATE tl_member %s WHERE class = ?')->set($set)->execute($dc->activeRecord->id);
              }
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
       public static function generateRandomDataRecords()
       {
              $db = \Database::getInstance();
              for ($i = 0; $i < 10000; $i++)
              {
                     $objMember = $db->query('SELECT id FROM tl_member ORDER BY RAND() LIMIT 1');
                     $objSubject = $db->query('SELECT id FROM tl_subject ORDER BY RAND() LIMIT 1');
                     $objStudent = $db->query('SELECT id FROM tl_student ORDER BY RAND() LIMIT 1');
                     $set = array('teacher' => $objMember->id, 'student' => $objStudent->id, 'subject' => $objSubject->id, 'tstamp' => 999, 'skill1' => 1, 'skill2' => 2, 'skill3' => 3, 'skill4' => 4, 'skill5' => 1, 'skill6' => 1, 'skill7' => 1, 'skill8' => 1);
                     $objRand = $db->prepare('SELECT id FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($objMember->id, $objStudent->id, $objSubject->id);
                     if (!$objRand->numRows)
                     {
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
