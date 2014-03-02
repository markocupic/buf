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
     * Contao PostLogin Hook
     * @param User $objUser
     */
    public function changeToInnoDb($objUser)
    {
        $db = \Database::getInstance();
        $db->query('ALTER TABLE tl_class ENGINE = InnoDB;');
        $db->query('ALTER TABLE tl_member ENGINE = InnoDB;');
        $db->query('ALTER TABLE tl_student ENGINE = InnoDB;');
        $db->query('ALTER TABLE tl_voting ENGINE = InnoDB;');
        $db->query('ALTER TABLE tl_subject ENGINE = InnoDB;');
    }

    /**
     * Contao PostLogin Hook
     * @param User $objUser
     */
    public function addForeignKeys($objUser)
    {
        $db = \Database::getInstance();

        // get the constraints array
        $objConstraints = $db->prepare('SELECT * FROM information_schema.referential_constraints WHERE constraint_schema = ?')
        ->execute($GLOBALS['TL_CONFIG']['dbDatabase']);
        //die(print_r($objConstraints->fetchAllAssoc(),true));
        $constraints = serialize($objConstraints->fetchAllAssoc());


        // add&drop foreign keys to tl_student
        if (preg_match('/tl_student_constr_1/', $constraints)) {
            $db->query('ALTER TABLE `tl_student` DROP FOREIGN KEY `tl_student_constr_1`');
        }
        //$db->query('ALTER TABLE `tl_student` ADD CONSTRAINT `tl_student_constr_1` FOREIGN KEY ( `class` ) REFERENCES `tl_class` (`id`) ON DELETE CASCADE');


        // add&drop foreign keys to tl_member
        if (preg_match('/tl_member_constr_1/', $constraints)) {
            //$db->query('ALTER TABLE `tl_member` DROP FOREIGN KEY `tl_member_constr_1`');
        }
        //$db->query('ALTER TABLE `tl_member` ADD CONSTRAINT  `tl_member_constr_1` FOREIGN KEY ( `class` ) REFERENCES `bfoerdern`.`tl_class` (`id`) ON DELETE SET NULL');


        // add&drop foreign keys to tl_voting
        if (preg_match('/tl_voting_constr_1/', $constraints)) {
            $db->query('ALTER TABLE `tl_voting` DROP FOREIGN KEY `tl_voting_constr_1`');
        }
        $db->query('ALTER TABLE `tl_voting` ADD CONSTRAINT `tl_voting_constr_1` FOREIGN KEY (`teacher`) REFERENCES `tl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE');

        if (preg_match('/tl_voting_constr_2/', $constraints)) {
            $db->query('ALTER TABLE `tl_voting` DROP FOREIGN KEY `tl_voting_constr_2`');
        }
        $db->query('ALTER TABLE `tl_voting`ADD CONSTRAINT `tl_voting_constr_2` FOREIGN KEY (`student`) REFERENCES `tl_student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE');

        if (preg_match('/tl_voting_constr_3/', $constraints)) {
            $db->query('ALTER TABLE `tl_voting` DROP FOREIGN KEY `tl_voting_constr_3`');
        }
        $db->query(' ALTER TABLE `tl_voting`ADD CONSTRAINT `tl_voting_constr_3` FOREIGN KEY (`subject`) REFERENCES `tl_subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE');

    }

    /**
     * ondelete_callback for tl_member
     * @param $dc
     */
    public function ondeleteCbTeacher($dc)
    {

        $db = \Database::getInstance();
        if ($dc instanceof \DataContainer && $dc->activeRecord) {
            $db->prepare('DELETE FROM `tl_voting` WHERE teacher = ?')->execute($dc->activeRecord->id);
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
            $db->prepare('DELETE FROM `tl_voting` WHERE student = ?')->execute($dc->activeRecord->id);
        }
    }

    /**
     * onload_callback for tl_member
     */
    public function onloadCallbackTlMember()
    {
        $db = \Database::getInstance();
        $set = array('class' => NULL);
        // zero is not a valid value for the class field
        $db->prepare('UPDATE `tl_member` %s WHERE class < ?')->set($set)->execute(1);



        $db->query("DELETE FROM tl_voting WHERE tstamp='5000'");
        return;
        // create random data records for testing
        for ($i = 0; $i < 5000; $i++) {
            $objMember = $db->query('SELECT id FROM `tl_member` ORDER BY RAND() LIMIT 1');
            $objSubject = $db->query('SELECT id FROM `tl_subject` ORDER BY RAND() LIMIT 1');
            $objStudent = $db->query('SELECT id FROM `tl_student` ORDER BY RAND() LIMIT 1');
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
