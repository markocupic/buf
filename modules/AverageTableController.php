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
 * Class AverageTableController
 * Front end module buf
 * @copyright  Leo Feyer 2005-2014
 * @author     Leo Feyer <https://contao.org>
 * @package    Core
 */
class AverageTableController extends \Frontend
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
              $objTemplate->classId = \TeacherModel::getOwnClass();
              $objTemplate->rows = $this->getRows();
              //tally sheet link
              $url = $this->generateFrontendUrl($objPage->row(), '/do/print_average_table');
              $objTemplate->printAverageTableLink = $url;
              return $objTemplate;
       }

       /**
        * @return array
        */
       private function getRows()
       {
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
		WHERE tl_student.class = ?
		GROUP BY tl_student.id
		ORDER BY tl_student.gender DESC, tl_student.lastname, tl_student.firstname';

              $objDb = $this->Database->prepare($sql)->execute(\TeacherModel::getOwnClass());
              return $objDb->numRows ? $objDb->fetchAllAssoc() : array();

       }

}
