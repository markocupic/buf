<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2014 Leo Feyer
 *
 * @package Buf
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the namespaces
 */
ClassLoader::addNamespaces(array
(
	'MCupic',
));


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	// Classes
	'MCupic\BufHelper'                 => 'system/modules/buf/classes/BufHelper.php',
	'MCupic\Cipher'                    => 'system/modules/buf/classes/Cipher.php',

	// Models
	'MCupic\ClassModel'                => 'system/modules/buf/models/ClassModel.php',
	'MCupic\VotingModel'               => 'system/modules/buf/models/VotingModel.php',
	'MCupic\SubjectModel'              => 'system/modules/buf/models/SubjectModel.php',
	'MCupic\StudentModel'              => 'system/modules/buf/models/StudentModel.php',
	'MCupic\TeacherModel'              => 'system/modules/buf/models/TeacherModel.php',

	// Modules
	'MCupic\AverageTableController'    => 'system/modules/buf/modules/AverageTableController.php',
	'MCupic\LoginController'           => 'system/modules/buf/modules/LoginController.php',
	'MCupic\TallySheetController'      => 'system/modules/buf/modules/TallySheetController.php',
	'MCupic\DashboardController'       => 'system/modules/buf/modules/DashboardController.php',
	'MCupic\FpdfController'            => 'system/modules/buf/modules/FpdfController.php',
	'MCupic\VotingTableController'     => 'system/modules/buf/modules/VotingTableController.php',
	'MCupic\MainController'            => 'system/modules/buf/modules/MainController.php',
	'MCupic\StartNewVotingController'  => 'system/modules/buf/modules/StartNewVotingController.php',
	'MCupic\AccountSettingsController' => 'system/modules/buf/modules/AccountSettingsController.php',
	'MCupic\EditClasslistController'   => 'system/modules/buf/modules/EditClasslistController.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'average_table'        => 'system/modules/buf/templates',
	'edit_classlist'       => 'system/modules/buf/templates',
	'voting_table_partial' => 'system/modules/buf/templates',
	'voting_table'         => 'system/modules/buf/templates',
	'dashboard'            => 'system/modules/buf/templates',
	'tally_sheet'          => 'system/modules/buf/templates',
	'login'                => 'system/modules/buf/templates',
	'start_new_voting'     => 'system/modules/buf/templates',
	'account_settings'     => 'system/modules/buf/templates',
	'tallysheet_modal'     => 'system/modules/buf/templates',

));
