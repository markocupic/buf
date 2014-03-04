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
            $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/menu');
            return sprintf('<a href="%s" title="zurück zum Menü" class="icon_back">Zurück zum Menü</a>', $url);
        }

        if ($strTag == 'buf::logout_user') {
            // Login and redirect
            if (FE_USER_LOGGED_IN) {
                $url = \Frontend::generateFrontendUrl($objPage->row(), '/do/login') . setQueryString(array('act' => 'logout'));
                return '<a href="' . $url . '" title="logout" class="icon_logout">Logout</a>';
            }
        }
        return false;
    }


    /**
     * ondelete_callback for tl_member
     * @param $dc
     */
    public function ondeleteCbTeacher($dc)
    {

        $db = \Database::getInstance();
        if ($dc instanceof \DataContainer && $dc->activeRecord) {
            $db->prepare('DELETE FROM tl_voting WHERE teacher = ?')->execute($dc->activeRecord->id);
        }
    }

    /**
     * ondelete_callback for tl_subject
     * @param $dc
     */
    public function ondeleteCbSubject($dc)
    {

        $db = \Database::getInstance();
        if ($dc instanceof \DataContainer && $dc->activeRecord) {
            $db->prepare('DELETE FROM tl_voting WHERE subject = ?')->execute($dc->activeRecord->id);
        }
    }

    /**
     * ondelete_callback for tl_student
     * @param $dc
     */
    public function ondeleteCbStudent($dc)
    {

        $db = \Database::getInstance();
        if ($dc instanceof \DataContainer && $dc->activeRecord) {
            $db->prepare('DELETE FROM tl_voting WHERE student = ?')->execute($dc->activeRecord->id);
        }
    }

    /**
     * ondelete_callback for tl_class
     * @param $dc
     */
    public function ondeleteCbClass($dc)
    {

        $db = \Database::getInstance();
        if ($dc instanceof \DataContainer && $dc->activeRecord) {
            // delete all votings of the deleted class
            $objStudent = $db->prepare('SELECT id FROM tl_student WHERE class=?')->execute($dc->activeRecord->id);
            while ($objStudent->next()) {
                $db->prepare('DELETE FROM tl_voting WHERE student = ?')->execute($objStudent->id);

            }

            // delete all students of the deleted class
            $db->prepare('DELETE FROM tl_student WHERE class = ?')->execute($dc->activeRecord->id);

            // set tl_member.class of the concerned teacher to NULL
            $set = array('class' => NULL, 'isClassTeacher' => '');
            // zero is not a valid value for the class field
            $db->prepare('UPDATE tl_member %s WHERE class = ?')->set($set)->execute($dc->activeRecord->id);
        }
    }

    /**
     * onload_callback for tl_member
     */
    public function onloadCallbackTlMember()
    {
        $db = \Database::getInstance();
        $set = array('class' => NULL, 'isClassTeacher' => '');
        // zero is not a valid value for the class field
        $db->prepare('UPDATE tl_member %s WHERE class < ? OR isClassTeacher = ?')->set($set)->execute(1,'');



        return;

        // generate data records for testing
        $db->query("DELETE FROM tl_voting WHERE tstamp='5000'");
        // create random data records for testing
        for ($i = 0; $i < 50000; $i++) {
            $objMember = $db->query('SELECT id FROM tl_member ORDER BY RAND() LIMIT 1');
            $objSubject = $db->query('SELECT id FROM tl_subject ORDER BY RAND() LIMIT 1');
            $objStudent = $db->query('SELECT id FROM tl_student ORDER BY RAND() LIMIT 1');
            $set = array(
                'teacher' => $objMember->id,
                'student' => $objStudent->id,
                'subject' => $objSubject->id,
                'tstamp' => 5000,
                'skill1' => 1,
                'skill2' => 2,
                'skill3' => 3,
                'skill4' => 4,
                'skill5' => 1,
                'skill6' => 1,
                'skill7' => 1,
                'skill8' => 1
            );
            $objSel = $db->prepare('SELECT id FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($objMember->id, $objStudent->id, $objSubject->id);
            if (!$objSel->numRows) {
                $db->prepare('INSERT INTO tl_voting %s')->set($set)->execute();
            }

        }



    }
}
