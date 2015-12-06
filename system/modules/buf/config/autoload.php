<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2015 Leo Feyer
 *
 * @license LGPL-3.0+
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
	'MCupic\Cipher'                    => 'system/modules/buf/classes/Cipher.php',
	'MCupic\BufHelper'                 => 'system/modules/buf/classes/BufHelper.php',

	// Models
	'MCupic\SubjectModel'              => 'system/modules/buf/models/SubjectModel.php',
	'MCupic\StudentModel'              => 'system/modules/buf/models/StudentModel.php',
	'MCupic\VotingModel'               => 'system/modules/buf/models/VotingModel.php',
	'MCupic\TeacherModel'              => 'system/modules/buf/models/TeacherModel.php',
	'MCupic\ClassModel'                => 'system/modules/buf/models/ClassModel.php',
	'MCupic\CommentModel'              => 'system/modules/buf/models/CommentModel.php',

	// Modules
	'MCupic\EditClasslistController'   => 'system/modules/buf/modules/EditClasslistController.php',
	'MCupic\VotingTableController'     => 'system/modules/buf/modules/VotingTableController.php',
	'MCupic\DashboardController'       => 'system/modules/buf/modules/DashboardController.php',
	'MCupic\AccountSettingsController' => 'system/modules/buf/modules/AccountSettingsController.php',
	'MCupic\FpdfController'            => 'system/modules/buf/modules/FpdfController.php',
	'MCupic\LoginController'           => 'system/modules/buf/modules/LoginController.php',
	'MCupic\TallySheetController'      => 'system/modules/buf/modules/TallySheetController.php',
	'MCupic\AverageTableController'    => 'system/modules/buf/modules/AverageTableController.php',
	'MCupic\MainController'            => 'system/modules/buf/modules/MainController.php',
	'MCupic\StartNewVotingController'  => 'system/modules/buf/modules/StartNewVotingController.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'account_settings'     => 'system/modules/buf/templates',
	'voting_table_partial' => 'system/modules/buf/templates',
	'tally_sheet'          => 'system/modules/buf/templates',
	'voting_comment_modal' => 'system/modules/buf/templates',
	'dashboard-bak'        => 'system/modules/buf/templates',
	'login'                => 'system/modules/buf/templates',
	'voting_table'         => 'system/modules/buf/templates',
	'tallysheet_modal'     => 'system/modules/buf/templates',
	'edit_classlist'       => 'system/modules/buf/templates',
	'start_new_voting'     => 'system/modules/buf/templates',
	'average_table'        => 'system/modules/buf/templates',
	'dashboard'            => 'system/modules/buf/templates',
));
