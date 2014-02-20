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
 * Reads and writes classes
 *
 * @package   Models
 * @author    Leo Feyer <https://github.com/leofeyer>
 * @copyright Leo Feyer 2005-2014
 */
class VotingModel extends \Model
{

    /**
     * Table name
     * @var string
     */
    protected static $strTable = 'tl_voting';

    /**
     * @param $Klasse
     * @param $Fach
     * @param $ID_LP
     * @return array
     */
    public static function getRows($Klasse, $Fach, $ID_LP)
    {
        $objUser = \System::importStatic('FrontendUser');
        $tolerance = $objUser->deviation;

        if (!self::isOwner() && \TeacherModel::getOwnClass() != $Klasse)
        {
            //return;
        }

        //prueft, ob der aktuelle Benutzer auch Besitzer der Datensaeze ist
        if (self::isOwner()) {
            $BearbeitenVerboten = false;
        } else {
            $BearbeitenVerboten = true;
        }


        $arr_datensaetze = array();


        $objStudent = \Database::getInstance()->prepare('SELECT id, lastname, firstname FROM tl_student WHERE class=? ORDER BY gender DESC,lastname, firstname')->execute($Klasse);
        $m = 0;
        while ($objStudent->next()) {
            $m = 'student_' . $objStudent->id;
            $objVoting = \Database::getInstance()->prepare('SELECT * FROM tl_voting WHERE teacher = ? AND student = ? AND subject = ?')->execute($ID_LP, $objStudent->id, $Fach);
            //Falls die Abfrage nicht eindeutig war.
            if ($objVoting->numRows > 1) {
                die ("Abbruch: zwei Datensätze der selben Kategorie vorhanden");
            }

            //Falls zum Namen keine Bewertung gefunden wurde, bleiben die Zellen leer.
            if ($objVoting->numRows < 1) {
                for ($i = 1; $i < 9; $i++) {
                    $skill = "0";
                    $deviation = "";
                    $color = "000000";
                    $array_name = "unterarray" . $i;
                    $$array_name = array("value" => $skill, "deviation" => $deviation, "color" => $color, "average" => 0);
                    $dataRecordId = "";
                }
            }
            //Falls ein Datensatz vorhanden ist
            if ($objVoting->numRows == 1) {
                $dataRecord = $objVoting->fetchAssoc();
                for ($i = 1; $i < 9; $i++) {
                    $skill = $dataRecord["skill" . $i];
                    if ($skill < 1) {
                        $skill = "0";
                    }
                    //average
                    //Nur für den Klassenlehrer an seiner Stammklasse ersichtlich
                    if ($skill > 0 && \TeacherModel::getOwnClass() == $Klasse) {
                        $sql = sprintf('SELECT AVG(skill%s) AS average FROM tl_voting WHERE student = ? AND skill%s > 0 AND skill%s < 5 AND id != ?',$i,$i,$i);
                        $stmt3 = \Database::getInstance()->prepare($sql)->execute($objStudent->id, $dataRecord['id']);
                        $rowAverage = $stmt3->fetchAssoc();
                        $intAverage = $rowAverage['average'];
                        $deviation = $dataRecord["skill" . $i] - $intAverage;
                        if ($deviation < (-1) * $tolerance && $intAverage > 0) {
                            $color = "009900";
                        } elseif ($deviation > $tolerance && $intAverage > 0) {
                            $color = "CC0000";
                        } else {
                            $color = "000000";
                        }
                    } else {
                       $intAverage = 0;
                        $color = "000000";
                    }

                    if ($color != "000000" && $intAverage > 0) {
                        $deviation = round($deviation, 1);
                    } else {
                        $deviation = "";
                    }
                    $array_name = "unterarray" . $i;
                    $$array_name = array("value" => $skill, "deviation" => $deviation, "color" => $color, "average" =>$intAverage);

                }
                //end for
            }
            //end if
            $dataRecordId = $dataRecord["id"];
            $arr_datensaetze[$m] = array(
                "student" => $objStudent->id,
                "lastname" => $objStudent->lastname,
                "firstname" => $objStudent->firstname,
                "dataRecordId" => $dataRecordId,
                "skill1" => $unterarray1,
                "skill2" => $unterarray2,
                "skill3" => $unterarray3,
                "skill4" => $unterarray4,
                "skill5" => $unterarray5,
                "skill6" => $unterarray6,
                "skill7" => $unterarray7,
                "skill8" => $unterarray8
            );
        }
        //end while
        //die(print_r($arr_datensaetze,true));
        return $arr_datensaetze;
    }

    /**
     * @param $mode
     * @param $colOrRow
     * @param $teacher
     * @param $subject
     * @param $class
     * @return bool
     */
    public static function deleteRowOrCol($mode, $colOrRow, $teacher, $subject, $class)
    {
        $objUser = \System::importStatic('FrontendUser');

        if ($objUser->id == $teacher) {
            if ($mode == 'delete_row') {
                \Database::getInstance()->prepare('DELETE FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($teacher, $colOrRow, $subject);
                return true;
            }

            if ($mode == 'delete_col') {

                $set = array(
                    'tstamp' => time()
                );
                $set['skill' . $colOrRow] = '0';
                \Database::getInstance()->prepare('UPDATE tl_voting %s WHERE teacher=? AND subject=? AND student = ANY (SELECT id FROM tl_student WHERE class=?)')->set($set)->execute($teacher, $subject, $class);
                // Delete all empty rows
                \Database::getInstance()->execute('DELETE FROM tl_voting WHERE (skill1 + skill2 + skill3 + skill4 + skill5 + skill6 + skill7 + skill8) < 1');

                return true;
            }
        }
        return false;
    }


    /**
     * @param $student
     * @param $class
     * @param $teacher
     * @param $subject
     * @param $skill
     * @param int $value
     * @return bool|int|string
     */
    public static function update($student, $class, $teacher, $subject, $skill, $value = 0)
    {

        $objUser = \System::importStatic('FrontendUser');
        if (intval($teacher) == $objUser->id) {

            $value = $value == '' ? 0 : intval(trim($value));
            if (is_integer($value) && $value >= 0 && $value < 5) {
                //if($value==0)$value='';
                $objVoting = \Database::getInstance()->prepare('SELECT * FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($teacher, $student, $subject);
                if ($objVoting->numRows) {

                    $set = array(
                        'tstamp' => time(),
                    );
                    $set['skill' . $skill] = $value;
                    \Database::getInstance()->prepare('UPDATE tl_voting %s WHERE id=?')
                        ->set($set)
                        ->execute($objVoting->id);
                    // delete all empty rows
                    \Database::getInstance()->prepare('DELETE FROM tl_voting WHERE id=? AND (skill1 + skill2 + skill3 + skill4 + skill5 + skill6 + skill7 + skill8) < 1')
                                            ->execute($objVoting->id);
                } else {
                    if ($value > 0) {
                        $set = array(
                            'student' => $student,
                            'teacher' => $teacher,
                            'subject' => $subject,
                            'tstamp' => time()
                        );

                        $set['skill' . $skill] = $value;

                        \Database::getInstance()->prepare('INSERT INTO tl_voting %s')
                            ->set($set)
                            ->execute();
                    }
                }
                if ($value == 0) {
                    $value = '';
                }


                return $value;
            }
        }
        return false;
    }


    /**
     * @return bool
     */
    public static function isOwner()
    {
        $objUser = \System::importStatic('FrontendUser');
        if ($objUser->id == \Input::get('teacher')) {
            return true;
        }
        return false;
    }


}
