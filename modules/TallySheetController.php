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
 * Class TallySheetController
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class TallySheetController extends \Frontend
{

    /**
     * @var $objMainController
     */
    protected $objMainController;

    public function __construct($objMainController)
    {
        $this->objMainController = $objMainController;
        $this->import('FrontendUser', 'User');
        return parent::__construct();
    }

    /**
     * Generate the module
     */
    public function setTemplate($objTemplate)
    {
        $objTemplate->classId = \TeacherModel::getOwnClass();
        $arrData = $this->getTableBody();
        $objTemplate->rows =$arrData['rows'];
        $objTemplate->js =$arrData['js'];
        $objTemplate->elementId = $this->objMainController->id;


        return $objTemplate;
    }

    /**
     * @return array
     */
    private function getTableBody()
    {
        $output = "";
        $js = "";
        $Klasse = \TeacherModel::getOwnClass();

        $output .= "\r\n\r\n";
        $objStudent = $this->Database->prepare('SELECT * FROM tl_student WHERE class = ? ORDER BY gender ASC,lastname,firstname')->execute($Klasse);
        $Zell_ID = 0;
        while ($objStudent->next()) {
            $output .= "<tr>";
            $output .= "<td class=\"align_left\">" . $objStudent->lastname . "</td>";
            $output .= "<td class=\"align_left\">" . $objStudent->firstname . "</td>";

            for ($i = 1; $i < 9; $i++) {
                //Schnittberechnung f&uuml;r die farbliche Hervorhebung
                $stmt2 = $this->Database->prepare("SELECT * FROM tl_voting WHERE  student = ? AND skill" . $i . " > ?")->execute($objStudent->id, '0');
                $AnzahlBeurteilungen = $stmt2->numRows;

                $stmt3 = $this->Database->prepare("SELECT AVG(skill$i) AS 'Mittelwert' FROM tl_voting WHERE student = ? AND skill$i > 0")->execute($objStudent->id);
                $rowMittelwert = $stmt3->fetchRow();
                $SchnittKriterium = round($rowMittelwert["Mittelwert"], 0);
                //Ende Schnittberechnung

                if ($i % 2 != 0) {
                    $HintergrundGeradeSpalten = " odd";
                } else {
                    $HintergrundGeradeSpalten = " even";
                }
                for ($m = 1; $m < 5; $m++) {
                    //Die Zelle mit dem Durchschnitt wird farblich hervorgehoben
                    if ($SchnittKriterium == $m && $AnzahlBeurteilungen > 0) {
                        $bgColorDurchschnitt = "background-color:#ffcccc";
                    } else {
                        $bgColorDurchschnitt = "";
                    }
                    $Zell_ID++;

                    $output .= "<td id=\"Zelle_" . $Zell_ID . "\" title=\"&oslash; avg: " . round($rowMittelwert["Mittelwert"], 2) . "\" ";
                    //Nur wenn auch eine zum Kriterium passende Bewertung vorhanden ist, wird die Ajax-Anwendun aktiviert.
                    $output .= "class=\"Strichliste textaligncenter" . $HintergrundGeradeSpalten . "\" style=\"width:2.5%; height:45px;" . $bgColorDurchschnitt . "\">";
                    if ($AnzahlBeurteilungen > 0) {
                        $js .= sprintf("
							document.id('Zelle_%s').addEvent('mouseenter', function(event) {
								//event.stopPropagation();
								objTallySheet.showInfoBox(%s,%s);
							});
                        ", $Zell_ID, $objStudent->id, $i);
                        $js .= sprintf("
							document.id('Zelle_%s').addEvent('mouseleave', function(event) {
								event.stopPropagation();
								objTallySheet.destroyInfoBox();
							});
                        ", $Zell_ID);
                    }
                    $objVoting = $this->Database->prepare("SELECT * FROM tl_voting WHERE student = ? AND skill$i = ?")->execute($objStudent->id, $m);
                    $br = 1;
                    while ($objVoting->next()) {
                        if ($objVoting->teacher == $this->User->id) {
                            $output .= "<span style=\"text-decoration:underline; font-weight:bold; font-size:1em;\">I</span>";
                        } else {
                            $output .= "I";
                        }
                        $br++;
                        if ($br == 6) {
                            $br = 1;
                            $output .= "<br>";
                        }
                    }
                    //end while
                    $output .= "</td>\r\n";
                    unset($bgColorDurchschnitt);
                }
                //end for
                unset($HintergrundGeradeSpalten);
            }
            //end for
            $output .= "</tr>\r\n";
        } //end while

        return array("js" => $js, "rows" => $output);
    }


}
