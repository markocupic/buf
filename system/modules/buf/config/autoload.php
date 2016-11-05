<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2016 Leo Feyer
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
	// Modules
	'MCupic\DashboardController'       => 'system/modules/buf/modules/DashboardController.php',
	'MCupic\LoginController'           => 'system/modules/buf/modules/LoginController.php',
	'MCupic\StartNewVotingController'  => 'system/modules/buf/modules/StartNewVotingController.php',
	'MCupic\AverageTableController'    => 'system/modules/buf/modules/AverageTableController.php',
	'MCupic\MainController'            => 'system/modules/buf/modules/MainController.php',
	'MCupic\TcpdfController'           => 'system/modules/buf/modules/TcpdfController.php',
	'MCupic\AccountSettingsController' => 'system/modules/buf/modules/AccountSettingsController.php',
	'MCupic\FpdfController'            => 'system/modules/buf/modules/FpdfController.php',
	'MCupic\TallySheetController'      => 'system/modules/buf/modules/TallySheetController.php',
	'MCupic\VotingTableController'     => 'system/modules/buf/modules/VotingTableController.php',
	'MCupic\EditClasslistController'   => 'system/modules/buf/modules/EditClasslistController.php',

	// Classes
	'MCupic\BufHelper'                 => 'system/modules/buf/classes/BufHelper.php',
	'MCupic\Cipher'                    => 'system/modules/buf/classes/Cipher.php',

	// Models
	'MCupic\CommentModel'              => 'system/modules/buf/models/CommentModel.php',
	'MCupic\StudentModel'              => 'system/modules/buf/models/StudentModel.php',
	'MCupic\VotingModel'               => 'system/modules/buf/models/VotingModel.php',
	'MCupic\TeacherModel'              => 'system/modules/buf/models/TeacherModel.php',
	'MCupic\ClassModel'                => 'system/modules/buf/models/ClassModel.php',
	'MCupic\SubjectModel'              => 'system/modules/buf/models/SubjectModel.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'voting_comment_modal_row' => 'system/modules/buf/templates',
	'mail_advice_klp'          => 'system/modules/buf/templates',
	'login'                    => 'system/modules/buf/templates',
	'edit_classlist'           => 'system/modules/buf/templates',
	'voting_comment_modal'     => 'system/modules/buf/templates',
	'start_new_voting'         => 'system/modules/buf/templates',
	'tallysheet_modal'         => 'system/modules/buf/templates',
	'tally_sheet'              => 'system/modules/buf/templates',
	'voting_table_partial'     => 'system/modules/buf/templates',
	'voting_table'             => 'system/modules/buf/templates',
	'average_table'            => 'system/modules/buf/templates',
	'dashboard'                => 'system/modules/buf/templates',
	'account_settings'         => 'system/modules/buf/templates',
));
