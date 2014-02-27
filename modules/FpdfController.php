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
 * Class FpdfController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class FpdfController extends \System
{

    /**
     * @var $objMainController
     */
    protected $objMainController;

    public function __construct($objMainController)
    {
        $this->objMainController = $objMainController;
        $this->import('FrontendUser', 'User');
        $this->import('Database');
        return parent::__construct();
    }

    /**
     * Generate the module
     */
    public function printTable()
    {

        if (\Input::get('class') && \Input::get('subject') && (\Input::get('teacher') == $this->User->id || \Teacher::getOwnClass() == \Input::get('class'))) {

            $teacher = \Input::get('teacher');
            $class = \Input::get('class');
            $subject = \Input::get('subject');

            define('FPDF_FONTPATH', TL_ROOT . '/system/modules/buf/plugins/fpdf/font/');


            $pdf = new \FPDF('P', 'mm', 'A4');

            //$pdf->AliasNbPages();
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 18);
            $pdf->SetFillColor(255, 255, 255);

            $pdf->Cell(1140, 8, 'Beurteilung des Sozial- & Arbeitsverhaltens', 'B', '', 'L');
            $pdf->Ln();
            $pdf->Ln();
            $XPos = $pdf->getX();
            $YPos = $pdf->getY();
            $pdf->SetFont('Arial', 'B', 11);
            $pdf->Cell(30, 6, 'Schule: ', 0, '', 'L');
            $pdf->SetFont('Arial', '', 11);
            $pdf->Cell(30, 6, $GLOBALS['TL_CONFIG']['buf_name_school'], 0, '', 'L');
            $pdf->Ln();

            $pdf->SetFont('Arial', 'B', 11);
            $pdf->Cell(30, 6, 'Lehrperson: ', 0, '', 'L');
            $pdf->SetFont('Arial', '', 11);
            $pdf->Cell(30, 6, \TeacherModel::getFullName($teacher), 0, '', 'L');

            $pdf->Ln();
            $pdf->SetFont('Arial', 'B', 11);
            $pdf->Cell(30, 6, 'Klasse: ', 0, '', 'L');
            $pdf->SetFont('Arial', '', 11);
            $pdf->Cell(30, 6, \ClassModel::getName($class), 0, '', 'L');

            $pdf->Ln();
            $pdf->SetFont('Arial', 'B', 11);
            $pdf->Cell(30, 6, 'Fach: ', 0, '', 'L');
            $pdf->SetFont('Arial', '', 11);
            $pdf->Cell(30, 6, utf8_decode(\SubjectModel::getName($subject)), 0, '', 'L');
            $pdf->Ln();

            $pdf->setY($YPos);
            $pdf->setX(140);
            $pdf->SetFont('Arial', '', 9);
            $pdf->Cell(10, 4, utf8_decode('A: selbständig arbeiten'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);
            $pdf->Cell(10, 4, utf8_decode('B: sorgfältig arbeiten'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('C: sich aktiv am Unterricht beteiligen'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('D: eigene Fähigkeiten einschätzen'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('E: mit anderen zusammenarbeiten'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('F: konstruktiv mit Kritik umgehen'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('G: respektvoll mit anderen umgehen'), 0, '', 'L');
            $pdf->Ln();
            $pdf->setX(140);

            $pdf->Cell(10, 4, utf8_decode('H: Regeln einhalten'), 0, '', 'L');
            $pdf->Ln();
            $pdf->Ln();


            $pdf->SetFont('Arial', 'B', 16);
            $pdf->Cell(10, 10, '', 0, '', 'C');
            $pdf->Cell(50, 10, '', 0);
            $pdf->SetX($pdf->GetX());
            $pdf->Cell(50, 10, '', 0);
            $pdf->SetX($pdf->GetX() + 3);
            $Array = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H');
            $i = 0;
            foreach ($Array as $skill) {
                $i += 1;
                $pdf->Cell(9, 10, $skill, 0, '', 'C');
                if ($i == 4) {
                    $pdf->SetX($pdf->GetX() + 3);
                } else {
                    $pdf->SetX($pdf->GetX());
                }
            }
            //end for
            $pdf->Ln();
            $pdf->SetFont('Arial', '', 11);

            $objStudent = $this->Database->prepare('SELECT * FROM tl_student WHERE class = ? ORDER BY gender DESC, lastname ASC, firstname ASC')->execute($class);
            $color = $m = 0;
            while ($objStudent->next()) {
                $objVoting = $this->Database->prepare('SELECT * FROM tl_voting WHERE teacher = ? AND student = ? AND subject = ?')
                    ->execute($teacher, $objStudent->id, $subject);

                $m += 1;
                $color += 1;
                if ($color == 2) {
                    $pdf->SetFillColor(220, 220, 220);
                    $color = '0';
                }

                $pdf->Cell(10, 7, $m, 1, '', 'R', 1);
                $pdf->Cell(50, 7, utf8_decode($objStudent->lastname), 1, '', 'L', 1);
                $pdf->SetX($pdf->GetX());
                $pdf->Cell(50, 7, utf8_decode($objStudent->firstname), 1, '', 'L', 1);
                $pdf->SetX($pdf->GetX() + 3);

                for ($i = 1; $i < 9; $i++)
                {
                    $skill = $objVoting->{'skill' . $i};
                    if ($skill === 0 || $skill == 0) {
                        $skill = '';
                    }
                    $pdf->Cell(9, 7, $skill, 1, '', 'C', 1);
                    if ($i == 4) {
                        $pdf->SetX($pdf->GetX() + 3);
                    } else {
                        $pdf->SetX($pdf->GetX());
                    }
                }
                //end for
                $pdf->Ln();
                $pdf->SetFillColor(255, 255, 255);
            } //end while
            $pdf->Ln();
            $pdf->Cell(190, 8, date('j. M Y') . ',  Unterschrift: _________________________________________', 0, '', 'L');
            $pdf->Output();
        }
    }
}