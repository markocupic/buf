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
              if ($strTag == 'buf::name_school')
              {
                     if (trim($GLOBALS['TL_CONFIG']['buf_name_school']) != '')
                     {
                            return '<li><span class="fa fa-building-o"></span> ' . $GLOBALS['TL_CONFIG']['buf_name_school'] . '</li>';
                     }
              }

              if ($strTag == 'buf::dashboard_link')
              {
                     $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/dashboard');
                     return sprintf('<a href="%s" title="zurück zum Dashboard"><span class="fa fa-arrow-left"></span> Zurück zum Dashboard</a>', $url);
              }

              if ($strTag == 'buf::logged_in_user')
              {
                     if (FE_USER_LOGGED_IN)
                     {
                            $user = \FrontendUser::getInstance();
                            return '<li><span class="fa fa-user"></span> ' . $user->firstname . ' ' . $user->lastname . '</li>';
                     }
              }

              if ($strTag == 'buf::logout_user')
              {
                     // Login and redirect
                     $page = \PageModel::findByAlias('buf');

                     if (FE_USER_LOGGED_IN)
                     {
                            $url = \Frontend::generateFrontendUrl($page->row(), '/do/login') . setQueryString(array('act' => 'logout'));
                            return '<li><a href="' . $url . '" title="Abmelden"><span class="fa fa-sign-out"></span></a></li>';
                     } else {
                            $url = \Frontend::generateFrontendUrl($page->row(), '/do/login');
                            return '<li><a href="' . $url . '" title="Anmelden"><span class="fa fa-sign-in"></span></a></li>';
                     }
              }

              if ($strTag == 'buf::dashboard_link_header')
              {
                     // Dashboard link in header
                     $page = \PageModel::findByAlias('buf');

                     if (FE_USER_LOGGED_IN)
                     {
                            $url = \Frontend::generateFrontendUrl($page->row(), '/do/dashboard');
                            return '<li><a href="' . $url . '" title="Gehe zum Dashboard"><span class="fa fa-list"></span></a></li>';
                     }
              }

              if ($strTag == 'buf::account_settings')
              {
                     // Login and redirect
                     if (FE_USER_LOGGED_IN)
                     {
                            $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/account_settings');
                            return '<li><a href="' . $url . '" title="Konto Einstellungen"><span class="fa fa-cogs"></span></a></li>';
                     }
              }
              return false;
       }

       /**
        * ensure referential integrity in tables with multiple parent tables
        * method called as reviseTableHook
        *
        * in parent tables:
        * add one ore more child tables in the config section of the DCA
        * $GLOBALS['TL_DCA']['tl_parent']['config']['buf_ctable'] = array('tl_child', 'tl_child2');
        *
        * in child tables:
        * add one ore more parent tables in the config section of the DCA
        * $GLOBALS['TL_DCA']['tl_child']['config']['buf_ptable'] = array('tl_parent', 'tl_parent2');
        * add the foreign key in the fields section of the DCA
        * $GLOBALS['TL_DCA']['tl_child']['fields']['someField1']['foreignKey'] = 'tl_parent.id';
        * $GLOBALS['TL_DCA']['tl_child']['fields']['someField2']['foreignKey'] = 'tl_parent2.id';
        *
        * @param string $table
        * @param string $new_records
        * @param string $parent_table
        * @param string $child_tables
        * @return bool
        */
       public static function checkForReferentialIntegrity($table = '', $new_records = '', $parent_table = '', $child_tables = '')
       {
              if ($table == '')
              {
                     return false;
              }

              $reload = false;

              if (!isset($GLOBALS['loadDataContainer'][$table]))
              {
                     $objDC = new self;
                     $objDC->loadDataContainer($table);
              }

              // Delete all records of the current table that are not related to the parent table
              $arrPtable = is_array($GLOBALS['TL_DCA'][$table]['config']['buf_ptable']) ? $GLOBALS['TL_DCA'][$table]['config']['buf_ptable'] : array();

              // traverse each field, to see if it references to a parent table
              foreach ($GLOBALS['TL_DCA'][$table]['fields'] as $field => $arrField)
              {
                     if ($arrField['foreignKey'] != '')
                     {
                            // 'foreignKey' => 'tl_parent.id'
                            if (!preg_match('/^(.+)\.(.+)$/', $arrField['foreignKey']))
                            {
                                   // skip to next field, if foreign key isn't valid
                                   continue;
                            }
                            list($ptable, $pfield) = explode('.', $arrField['foreignKey']);

                            // field must be part of a table which is declared as parent table
                            if (!in_array($ptable, $arrPtable))
                            {
                                   // skip to next field, if foreign key isn't valid
                                   continue;
                            }

                            $db = \Database::getInstance();

                            // check for a valid tablename
                            if (!in_array($ptable, $db->listTables()))
                            {
                                   // skip to next field, if foreign key isn't valid
                                   continue;
                            }

                            // check for a valid fieldname
                            $blnFieldExists = false;
                            foreach ($db->listFields($ptable) as $v)
                            {
                                   if ($v['name'] == $pfield)
                                   {
                                          $blnFieldExists = true;
                                          break;
                                   }
                            }
                            if (!$blnFieldExists)
                            {
                                   // skip to next field, if foreign key isn't valid
                                   continue;
                            }

                            //  delete records of the current table that are not related to the parent table
                            $query = "DELETE FROM " . $table . " WHERE NOT EXISTS (SELECT * FROM " . $ptable . " WHERE " . $table . "." . $field . " = " . $ptable . "." . $pfield . ")";
                            $objStmt = $db->execute($query);
                            if ($objStmt->affectedRows > 0)
                            {
                                   $method = __FUNCTION__;
                                   while (self::$method($table) === true)
                                   {
                                          self::$method($table);
                                   }
                                   $reload = true;
                            }
                     }
              }


              // Delete all records of the child table that are not related to the current table
              $arrCtable = $GLOBALS['TL_DCA'][$table]['config']['buf_ctable'];

              if (is_array($arrCtable))
              {
                     // traverse each child table and delete all records of the child table that are not related to the current table
                     foreach ($arrCtable as $ctable)
                     {
                            if (!isset($GLOBALS['loadDataContainer'][$ctable]))
                            {
                                   $objDC = new self;
                                   $objDC->loadDataContainer($ctable);
                            }

                            if (!isset($GLOBALS['TL_DCA'][$ctable]['fields']))
                            {
                                   continue;
                            }

                            // traverse each field, to see if it references to a parent table
                            foreach ($GLOBALS['TL_DCA'][$ctable]['fields'] as $cfield => $arrField)
                            {
                                   if ($arrField['foreignKey'] != '')
                                   {
                                          // 'foreignKey' => 'tl_parent.id'
                                          if (!preg_match('/^(.+)\.(.+)$/', $arrField['foreignKey']))
                                          {
                                                 // skip to next field, if foreign key isn't valid
                                                 continue;
                                          }
                                          list($ptable, $pfield) = explode('.', $arrField['foreignKey']);

                                          $db = \Database::getInstance();

                                          // check for a valid tablename
                                          if (!in_array($ptable, $db->listTables()))
                                          {
                                                 // skip to next field, if foreign key isn't valid
                                                 continue;
                                          }

                                          // check for a valid fieldname
                                          $blnFieldExists = false;
                                          foreach ($db->listFields($ptable) as $v)
                                          {
                                                 if ($v['name'] == $pfield)
                                                 {
                                                        $blnFieldExists = true;
                                                        break;
                                                 }
                                          }
                                          if (!$blnFieldExists)
                                          {
                                                 // skip to next field, if foreign key isn't valid
                                                 continue;
                                          }

                                          //  delete records of the child table that are not related to the current table
                                          $query = "DELETE FROM " . $ctable . " WHERE NOT EXISTS (SELECT * FROM " . $ptable . " WHERE " . $ctable . "." . $cfield . " = " . $ptable . "." . $pfield . ")";
                                          $objStmt = $db->execute($query);
                                          if ($objStmt->affectedRows > 0)
                                          {
                                                 $method = __FUNCTION__;
                                                 while (self::$method($ctable) === true)
                                                 {
                                                        self::$method($ctable);
                                                 }
                                                 $reload = true;
                                          }
                                   }
                            }
                     }
              }

              // return true for a relaod
              if ($reload)
              {
                     return true;
              }
              else
              {
                     return false;
              }
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

              $db = \Database::getInstance();

              // delete empty comments
              $objStmt = $db->prepare('DELETE FROM tl_comment WHERE comment=?')->execute('');
              if ($objStmt->affectedRows > 0)
              {
                     return true;
              }

              // at minimum one skill must be > 0
              $objStmt = $db->execute('DELETE FROM tl_voting WHERE (skill1 + skill2 + skill3 + skill4 + skill5 + skill6 + skill7 + skill8) < 1');
              if ($objStmt->affectedRows > 0)
              {
                     return true;
              }

              // set tl_member.isClassTeacher to '' if the assigned class doesn't exist
              $set = array('class' => NULL, 'isClassTeacher' => '');
              $objStmt = $db->prepare('UPDATE tl_member %s WHERE tl_member.class NOT IN (SELECT id FROM tl_class)')->set($set)->execute();
              if ($objStmt->affectedRows > 0)
              {
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
