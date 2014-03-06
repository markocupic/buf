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
 * Back end modules
 */
$GLOBALS['BE_MOD']['buf'] = array(

    // Beurteilen Und Foerdern  modules
    'class' => array(
        'tables' => array('tl_class'),
        'icon' => 'system/modules/buf/assets/images/backend/mgroup.gif'
    ),
    'student' => array(
        'tables' => array('tl_student'),
        'icon' => 'system/modules/buf/assets/images/backend/member.gif'
    ),
    'voting' => array(
        'tables' => array('tl_voting'),
        'icon' => 'system/modules/buf/assets/images/backend/preview.gif'
    ),
    'subject' => array(
        'tables' => array('tl_subject'),
        'icon' => 'system/modules/buf/assets/images/backend/featured.gif'
    )
);

/**
 * Front end modules
 */
$GLOBALS['FE_MOD']['beurteilenfoerdern'] = array('mod_beurteilen_und_foerdern' => 'MainController');
if (TL_MODE == 'FE') {
    $GLOBALS['TL_CSS'][] = 'system/modules/buf/assets/css/base.css';
}

// replace insert tags Hook
$GLOBALS['TL_HOOKS']['replaceInsertTags'][] = array('BufHelper', 'bufReplaceInsertTags');

// revise Table Hook
$GLOBALS['TL_HOOKS']['reviseTable'][] = array('BufHelper', 'checkForReferentialIntegrity');
$GLOBALS['TL_HOOKS']['reviseTable'][] = array('BufHelper', 'bufReviseTableHook');

