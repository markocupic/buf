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


/**
 * Created by PhpStorm.
 * User: Marko
 * Date: 16.04.2016
 * Time: 11:01
 */
class PHPWordController extends \System
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
        // register PhpWord class
        \ClassLoader::addClasses(array(
            'PhpWord' => 'composer/vendor/phpoffice/phpword/src/PhpWord/PhpWord.php',
        ));

        return parent::__construct();

    }

    /**
     * @param $id
     * @return array
     */
    public function getSkill($id)
    {
        $arrSkills = array(
            'skill_1' => '',
            'skill_2' => '',
            'skill_3' => '',
            'skill_4' => '',
            'skill_5' => '',
            'skill_6' => '',
            'skill_7' => '',
            'skill_8' => '',
        );
        // do not count zero to the average
        $sql = 'SELECT
		tl_student.lastname, tl_student.firstname,
		AVG(CASE WHEN tl_voting.skill1 <> 0 THEN tl_voting.skill1 ELSE NULL END) AS skill1,
		AVG(CASE WHEN tl_voting.skill2 <> 0 THEN tl_voting.skill2 ELSE NULL END) AS skill2,
		AVG(CASE WHEN tl_voting.skill3 <> 0 THEN tl_voting.skill3 ELSE NULL END) AS skill3,
		AVG(CASE WHEN tl_voting.skill4 <> 0 THEN tl_voting.skill4 ELSE NULL END) AS skill4,
		AVG(CASE WHEN tl_voting.skill5 <> 0 THEN tl_voting.skill5 ELSE NULL END) AS skill5,
		AVG(CASE WHEN tl_voting.skill6 <> 0 THEN tl_voting.skill6 ELSE NULL END) AS skill6,
		AVG(CASE WHEN tl_voting.skill7 <> 0 THEN tl_voting.skill7 ELSE NULL END) AS skill7,
		AVG(CASE WHEN tl_voting.skill8 <> 0 THEN tl_voting.skill8 ELSE NULL END) AS skill8
		FROM tl_student
		LEFT JOIN tl_voting ON tl_student.id = tl_voting.student
		WHERE tl_student.id = ?
		GROUP BY tl_student.id
		';

        $objDb = $this->Database->prepare($sql)->limit(1)->execute($id);
        $row = $objDb->numRows ? $objDb->row() : array();

        for ($i = 1; $i < 9; $i++)
        {
            $skill = round($row['skill' . $i], 1);
            if ($skill === 0 || $skill == 0)
            {
                $skill = '';
            }
            $arrSkills['skill_' . $i] = $skill;
        }

        return $arrSkills;
    }

    /**
     *
     */
    public function printDataSheet()
    {

        // https://github.com/DerekMarcinyshyn/phpword/blob/master/samples/Sample_07_TemplateCloneRow.php
        // https://github.com/hscstudio/syawwal/blob/master/vendor/phpoffice/phpword/samples/resources/Sample_07_TemplateCloneRow.docx

        $templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor('system/modules/buf/templates/PHPWord_verhaltensbeurteilung_template.docx');
        // Variables on different parts of document
        $templateProcessor->setValue('class', \StudentModel::getClassnameFromStudentId(\Input::get('student')));
        $templateProcessor->setValue('name', \StudentModel::getFullName(\Input::get('student')));


        $arrSkill = $this->getSkill(\Input::get('student'));

        $templateProcessor->setValue('a', $arrSkill['skill_1']);
        $templateProcessor->setValue('b', $arrSkill['skill_2']);
        $templateProcessor->setValue('c', $arrSkill['skill_3']);
        $templateProcessor->setValue('d', $arrSkill['skill_4']);
        $templateProcessor->setValue('e', $arrSkill['skill_5']);
        $templateProcessor->setValue('f', $arrSkill['skill_6']);
        $templateProcessor->setValue('g', $arrSkill['skill_7']);
        $templateProcessor->setValue('h', $arrSkill['skill_8']);


        // Only collect comments of the selected time span
        $timeRange = $this->User->showCommentsNotOlderThen * 30 * 24 * 3600;
        if ($timeRange == 0)
        {
            $timeRange = time();
        }
        $timeRange = time() - $timeRange;

        $objComment = \Database::getInstance()->prepare('SELECT * FROM tl_comment WHERE student=? AND published=? AND dateOfCreation>? ORDER BY subject, teacher, dateOfCreation DESC')->execute(\Input::get('student'), 1, $timeRange);
        $prevId = '';

        // Count number or of rows
        $rows = $objComment->numRows;

        // Clone rows
        $templateProcessor->cloneRow('loopAuthor', $rows);

        $row = 0;
        while ($objComment->next())
        {
            $row++;
            $currentId = $objComment->teacher . '-' . $objComment->subject;

            // If a teacher has written 2 or more comments, do not show his name again
            $author = \TeacherModel::getFullName($objComment->teacher) . ', ' . \SubjectModel::findByPk($objComment->subject)->name;
            if ($prevId == $currentId)
            {
                $author = '';
            }

            // Add authors name
            $templateProcessor->setValue('loopAuthor#' . $row, htmlspecialchars(utf8_decode_entities($author)));

            // Add date
            $date = \Date::parse('d.m.Y', $objComment->dateOfCreation);
            $templateProcessor->setValue('loopDate#' . $row, htmlspecialchars(utf8_decode_entities($date)));

            // Add comment
            $templateProcessor->setValue('loopComment#' . $row, htmlspecialchars(utf8_decode_entities($objComment->comment)));

            $prevId = $currentId;
        }

        $templateProcessor->setValue('date', \Date::parse('d.m.Y'));

        $tempFolder = new \Folder('files/buf/tmp');
        $tempFolder->purge();

        $filename = 'Verhaltensbeurteilung_' . time() . '.docx';
        $templateProcessor->saveAs('files/buf/tmp/' . $filename);
        sleep(1);
        \Contao\Controller::sendFileToBrowser('files/buf/tmp/' . $filename);
    }

}