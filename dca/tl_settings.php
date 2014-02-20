<?php
$GLOBALS['TL_DCA']['tl_settings']['palettes']['default'] .= ';{beurteilen_und_foerdern_legend},buf_name_school';

/**
 * Add fields
 */
$GLOBALS['TL_DCA']['tl_settings']['fields']['buf_name_school'] = array(
    'label' => &$GLOBALS['TL_LANG']['tl_settings']['buf_name_school'],
    'inputType' => 'text',
    'default' => '',
    'eval' => array('tl_class' => '')
);
