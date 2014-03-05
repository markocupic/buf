<?php

/**
 * Contao Open Source CMS
 * Copyright (c) 2005-2014 Leo Feyer
 * @package BUF (Beurteilen und Fördern)
 * @author Marko Cupic m.cupic@gmx.ch, 2014
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */

/**
 * Run in a custom namespace, so the class can be replaced
 */
namespace MCupic;

class Cipher
{
    /**
     * @param $input
     * @return string
     */
    public static function encrypt($input)
    {
        return base64_encode(base64_encode($input));
    }

    /**
     * @param $input
     * @return string
     */
    public static function decrypt($input)
    {
        return base64_decode(base64_decode($input));
    }
}
