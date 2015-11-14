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
 * Class DashboardController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class DashboardController extends \Frontend
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
        global $objPage;
        $objTemplate->User = $this->User;
        $objTemplate->hrefNewVoting = $this->generateFrontendUrl($objPage->row(), '/do/start_new_voting');
        $objTemplate->hrefVotingTable = $this->generateFrontendUrl($objPage->row(), '/do/voting_table');


        // get all votings of the current user
        $user_id = $this->User->id;
        $sql = 'SELECT tl_voting.teacher AS teacherId, tl_voting.subject AS subjectId, tl_class.id AS classId, tl_class.name AS classname, tl_subject.name AS subjectname
				FROM tl_voting, tl_class, tl_subject
				WHERE tl_voting.teacher = ? AND (SELECT class FROM tl_student WHERE id = tl_voting.student) = tl_class.id AND tl_subject.id = tl_voting.subject
				GROUP BY tl_voting.teacher, (SELECT class FROM tl_student WHERE id = tl_voting.student), tl_voting.subject
				ORDER BY tl_class.name, tl_class.id, tl_subject.name, tl_subject.id';
        $objDb = \Database::getInstance()->prepare($sql)->execute($this->User->id);
        $objTemplate->myVotings = $objDb->fetchAllAssoc();

        // get all votings of the current class
        if (\TeacherModel::getOwnClass()) {
            $classTeacher = \TeacherModel::getOwnClass();
            $sql = 'SELECT tl_voting.teacher AS teacherId, tl_voting.subject AS subjectId, (SELECT class FROM tl_student WHERE id=tl_voting.student) AS classId
                FROM tl_voting, tl_class, tl_subject
                WHERE (SELECT class FROM tl_student WHERE id=tl_voting.student) = ?
                GROUP BY  tl_voting.teacher, tl_voting.subject
                ORDER BY (SELECT name FROM tl_subject WHERE id=tl_voting.subject) ASC';
            $objDb = \Database::getInstance()->prepare($sql)->execute($classTeacher);
            $objTemplate->votingsOnMyClass = $objDb->fetchAllAssoc();
        }



        //account settings link
        $url = $this->generateFrontendUrl($objPage->row(), '/do/account_settings');
        $objTemplate->setPasswordLink = $url;

        //edit classlist link
        $url = $this->generateFrontendUrl($objPage->row(), '/do/edit_classlist');
        $objTemplate->editClasslistLink = $url;

        //average Table link
        $url = $this->generateFrontendUrl($objPage->row(), '/do/average_table');
        $objTemplate->averageTableLink = $url;

        //tally sheet link
        $url = $this->generateFrontendUrl($objPage->row(), '/do/tally_sheet');
        $objTemplate->tallySheetLink = $url;




        return $objTemplate;

    }


}
