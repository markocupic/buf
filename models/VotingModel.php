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
 * Run in a custom namespace, so the class can be replaced
 */
namespace MCupic;


/**
 * Reads and writes classes
 *
 * @package   Models
 * @author    Leo Feyer <https://github.com/leofeyer>
 * @copyright Leo Feyer 2005-2014
 */
class VotingModel extends \Model
{

    /**
     * Table name
     * @var string
     */
    protected static $strTable = 'tl_voting';


    /**
     * @param $student
     * @param $teacher
     * @param $subject
     * @param $skill
     * @param int $value
     * @return bool
     */
    public static function update($student, $teacher, $subject, $skill, $value = 0)
    {

        $objUser = \System::importStatic('FrontendUser');
        if (intval($teacher) == $objUser->id) {

            $value = $value == '' ? 0 : intval(trim($value));
            if (is_integer($value) && $value >= 0 && $value < 5) {

                $objVoting = \Database::getInstance()->prepare('SELECT * FROM tl_voting WHERE teacher=? AND student=? AND subject=?')->execute($teacher, $student, $subject);
                if ($objVoting->numRows) {

                    $set = array(
                        'tstamp' => time(),
                    );
                    $set['skill' . $skill] = $value;
                    \Database::getInstance()->prepare('UPDATE tl_voting %s WHERE id=?')
                        ->set($set)
                        ->execute($objVoting->id);
                } else {
                    $set = array(
                        'student' => $student,
                        'teacher' => $teacher,
                        'subject' => $subject,
                        'tstamp' => time()
                    );
                    $set['skill' . $skill] = $value;
                    \Database::getInstance()->prepare('INSERT INTO tl_voting %s')
                        ->set($set)
                        ->execute();
                }
                return true;
            }
        }
        return false;
    }
}
