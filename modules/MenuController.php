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
 * Class MenuController
 *
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class MenuController extends \Frontend
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

        return $objTemplate;

    }


}
