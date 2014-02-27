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
class ClassModel extends \Model
{

    /**
     * Table name
     * @var string
     */
    protected static $strTable = 'tl_class';

    /**
     * @param $id
     * @return null|string
     */
    public static function getName($id)
    {
        $objDb = static::findByPk($id);
        if ($objDb !== null) {
            return $objDb->name;
        }
        return null;
    }


}
