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
        $objTemplate->hrefDeleteTable = $this->generateFrontendUrl($objPage->row(), '/do/delete_table') . setQueryString($arrQuery);

        $objTable = new \FrontendTemplate('voting_table_partial');
        $objTable->rows = \VotingModel::getRows(\Input::get('class'), \Input::get('subject'), \Input::get('teacher'));
        $objTable->classId = \Input::get('class');
        $objTable->teacherId = \Input::get('teacher');
        $objTable->subjectId = \Input::get('subject');
        $objTable->User = $this->User;

        // Delete row or col href
        $arrQuery = array('teacher' => \Input::get('teacher'), 'subject' => \Input::get('subject'), 'class' => \Input::get('class'));
        $objTable->hrefDeleteRowOrCol = $this->generateFrontendUrl($objPage->row(), '/do/delete_row_or_col') . setQueryString($arrQuery);

        $objTemplate->classId = \Input::get('class');
        $objTemplate->teacherId = \Input::get('teacher');
        $objTemplate->subjectId = \Input::get('subject');
        $objTemplate->User = $this->User;


        $objTemplate->votingTable = $objTable->parse();
        return $objTemplate;
    }
}
