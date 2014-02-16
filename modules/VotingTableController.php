<?php

/**
 * Contao Open Source CMS
 * Copyright (c) 2005-2014 Leo Feyer
 * @package Core
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Run in a custom namespace, so the class can be replaced
 */
namespace MCupic;


/**
 * Class VotingTableController
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class VotingTableController extends \Frontend
{

    public function __construct()
    {
        $this->import('FrontendUser', 'User');
        return parent::__construct();
    }

    /**
     * Generate the module
     */
    public function setTemplate($objTemplate)
    {
        global $objPage;

           // back href
        $objTemplate->hrefBack = $this->generateFrontendUrl($objPage->row(), '/do/menu');

        // delete table href
        $arrQuery = array('teacher' => \Input::get('teacher'), 'subject' => \Input::get('subject'), 'class' => \Input::get('class'));
        $objTemplate->hrefDeleteTable = $this->generateFrontendUrl($objPage->row(), '/do/delete_table') .  setQueryString($arrQuery);

        $objTable = new \FrontendTemplate('voting_table_partial');
        $objTable->rows = $this->getRows();
        $objTemplate->classId = \Input::get('class');
        $objTemplate->teacherId = \Input::get('teacher');
        $objTemplate->subjectId = \Input::get('subject');
        $objTemplate->User = $this->User;


        $objTemplate->votingTable = $objTable->parse();
        return $objTemplate;
    }

    public function isOwner()
    {
        if ($this->User->id == \Input::get('teacher')) {
            return true;
        }
        return false;
    }

    public function getRows()
    {
        $Abweichungstoleranz = $this->User->deviation;
        //die($Abweichungstoleranz);


        $Klasse = \Input::get('class');
        $Fach = \Input::get('subject');
        $ID_LP = \Input::get('teacher');

        //prueft, ob der aktuelle Benutzer auch Besitzer der Datensaeze ist
        if ($this->isOwner()) {
            $BearbeitenVerboten = false;
        } else {
            $BearbeitenVerboten = true;
        }


        $arr_datensaetze = array();


        $objStudent = $this->Database->prepare('SELECT id, lastname, firstname FROM tl_student WHERE class=? ORDER BY gender ASC,lastname, firstname')->execute($Klasse);
        $m = 0;
        while ($objStudent->next()) {
            $m++;
            $objVoting = $this->Database->prepare('SELECT * FROM tl_voting WHERE teacher = ? AND student = ? AND subject = ?')->execute($ID_LP,$objStudent->id, $Fach);
            //Falls die Abfrage nicht eindeutig war.
            if ($objVoting->numRows > 1) {
                die ("Abbruch: zwei Datens&auml;tze der selben Kategorie vorhanden");
            }

            //Falls zum Namen keine Bewertung gefunden wurde, bleiben die Zellen leer.
            if ($objVoting->numRows < 1) {
                for ($i = 1; $i < 9; $i++) {
                    $Kriterium = "0";
                    $Abweichung = "";
                    $Farbe = "000000";
                    $array_name = "unterarray" . $i;
                    $$array_name = array("Wert" => $Kriterium, "Abweichung" => $Abweichung, "Farbe" => $Farbe, "Mittelwert" => 0);
                    $DatensatzID = "";
                }
            }
            //Falls ein Datensatz vorhanden ist
            if ($objVoting->numRows == 1) {
                $rowDatensatz = $objVoting->fetchAssoc();
                for ($i = 1; $i < 9; $i++) {
                    $Kriterium = $rowDatensatz["skill" . $i];
                    if ($Kriterium < 1) {
                        $Kriterium = "0";
                    }
                    //Mittelwert
                    //Nur für den Klassenlehrer an seiner Stammklasse ersichtlich
                    if ($Kriterium > 0 && \TeacherModel::isClassTeacher() == $Klasse) {
                        $stmt3 = $this->Database->prepare("SELECT AVG(skill" . $i . ") AS 'Mittelwert' FROM tl_voting WHERE  student = ? AND skill$i > 0 AND skill" . $i ." < 5 AND id != ?")->execute($objStudent->id, $rowDatensatz['id']);
                        $rowMittelwert = $stmt3->fetchAssoc();

                        $Abweichung = $rowDatensatz["skill" . $i] - $rowMittelwert["Mittelwert"];
                        if ($Abweichung < (-1) * $Abweichungstoleranz && $rowMittelwert["Mittelwert"] > 0) {
                            $Farbe = "009900";
                        } elseif ($Abweichung > $Abweichungstoleranz && $rowMittelwert["Mittelwert"] > 0) {
                            $Farbe = "CC0000";
                        } else {
                            $Farbe = "000000";
                        }
                    } else {
                        $rowMittelwert["Mittelwert"] = 0;
                        $Farbe = "000000";
                    }

                    if ($Farbe != "000000" && $rowMittelwert["Mittelwert"] > 0) {
                        $Abweichung = round($Abweichung, 1);
                    } else {
                        $Abweichung = "";
                    }
                    $array_name = "unterarray" . $i;
                    $$array_name = array("Wert" => $Kriterium, "Abweichung" => $Abweichung, "Farbe" => $Farbe, "Mittelwert" => $rowMittelwert["Mittelwert"]);

                }
                //end for
            }
            //end if
            $DatensatzID = $rowDatensatz["id"];
            $arr_datensaetze[$m] = array(
                "student" => $objStudent->id,
                "lastname" => $objStudent->lastname,
                "firstname" => $objStudent->firstname,
                "Datensatz_ID" => $DatensatzID,
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
        return $arr_datensaetze;
    }

}
