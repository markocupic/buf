<?php
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
        $salt = substr($GLOBALS['TL_CONFIG']['encryptionKey'],0,4);
        $securekey = hash('sha256', $salt, TRUE);
        $iv = mcrypt_create_iv(16);
        return base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $securekey, $input, MCRYPT_MODE_ECB, $iv));
    }

    /**
     * @param $input
     * @return string
     */
    public static function decrypt($input)
    {
        return base64_decode(base64_decode($input));

        $salt = substr($GLOBALS['TL_CONFIG']['encryptionKey'],0,4);
        $securekey = hash('sha256', $salt, TRUE);
        $iv = mcrypt_create_iv(16);
        return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $securekey, base64_decode($input), MCRYPT_MODE_ECB, $iv));
    }
}
