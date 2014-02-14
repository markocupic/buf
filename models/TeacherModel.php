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
class TeacherModel extends \Model
{

       /**
        * Table name
        * @var string
        */
       protected static $strTable = 'tl_member';

       /**
        * @return mixed
        */
       public static function isClassTeacher()
       {
              $objUser = \System::importStatic('FrontendUser');
              if($objUser->class > 0){
                     return $objUser->class;
              } return false;
       }

       /**
        * @return mixed|null
        */
       public static function getOwnClass()
       {
              if(static::isClassTeacher())
              {
                     return static::isClassTeacher();
              } return null;
       }


}
