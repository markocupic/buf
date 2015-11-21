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
    'icon' => 'files/buf/images/backend/mgroup.gif'),
    'student' => array('tables' => array('tl_student'),
    'icon' => 'files/buf/images/backend/member.gif'),
    'voting' => array('tables' => array('tl_voting'),
    'icon' => 'files/buf/images/backend/preview.gif'),
    'subject' => array('tables' => array('tl_subject'),
    'icon' => 'files/buf/images/backend/featured.gif')
);

if(TL_MODE == 'FE')
{
    $GLOBALS['TL_JAVASCRIPT'][] = 'files/buf/jquery/main.js';
    $GLOBALS['TL_JAVASCRIPT'][] = 'files/buf/jquery/editClasslist.js';
    $GLOBALS['TL_JAVASCRIPT'][] = 'files/buf/jquery/votingTable.js';
    $GLOBALS['TL_JAVASCRIPT'][] = 'files/buf/jquery/tallySheet.js';
}
/**
 * Front end modules
 */
$GLOBALS['FE_MOD']['beurteilenfoerdern'] = array('mod_beurteilen_und_foerdern' => 'MainController');


// replace insert tags Hook
$GLOBALS['TL_HOOKS']['replaceInsertTags'][] = array('BufHelper', 'bufReplaceInsertTags');

// revise Table Hook
$GLOBALS['TL_HOOKS']['reviseTable'][] = array('BufHelper', 'checkForReferentialIntegrity');
$GLOBALS['TL_HOOKS']['reviseTable'][] = array('BufHelper', 'bufReviseTableHook');

// lang config
$GLOBALS['TL_LANG']['MSC']['newPasswordSet'] = 'Dein Passwort wurde aktualisiert.';
