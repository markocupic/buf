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
	// Models
	'MCupic\ClassModel'               => 'system/modules/buf/models/ClassModel.php',
	'MCupic\SubjectModel'             => 'system/modules/buf/models/SubjectModel.php',
	'MCupic\StudentModel'             => 'system/modules/buf/models/StudentModel.php',
	'MCupic\TeacherModel'             => 'system/modules/buf/models/TeacherModel.php',

	// Modules
	'MCupic\EditTableController'      => 'system/modules/buf/modules/EditTableController.php',
	'MCupic\MenuController'           => 'system/modules/buf/modules/MenuController.php',
	'MCupic\MainController'           => 'system/modules/buf/modules/MainController.php',
	'MCupic\StartNewVotingController' => 'system/modules/buf/modules/StartNewVotingController.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'edit_table'       => 'system/modules/buf/templates',
	'menu'             => 'system/modules/buf/templates',
	'start_new_voting' => 'system/modules/buf/templates',
));
