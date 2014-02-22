<?php
/**
 * Run in a custom namespace, so the class can be replaced
 */
namespace MCupic;

class BufHelper
{

    /**
     * Contao replaceInsertTags Callback
     * @param $strTag
     * @return bool
     */
    public function replaceInsertTags($strTag)
    {
        global $objPage;
        if ($strTag == 'buf::name_school') {
            if (trim($GLOBALS['TL_CONFIG']['buf_name_school']) != '') {
                return $GLOBALS['TL_CONFIG']['buf_name_school'];
            }
        }

        if ($strTag == 'buf::menu_link') {
            $url = \Frontend::generateFrontendUrl($objPage->row(),'/do/menu');
            return sprintf('<a href="%s" title="zurück zum Menü">Zurück zum Menü</a>', $url);
        }


        return false;
    }
}
