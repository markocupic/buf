<?php

/**
 * @param $arrItems
 * @param bool $encode
 * @return mixed|string
 */
function setQueryString($arrItems, $encode = false)
{
    $encode = true;
    $blnEncode = false;
    if (!is_array($arrItems) || !count($arrItems)) {
        return '';
    }
    ksort($arrItems);

    $queryStr = '?';

    foreach ($arrItems as $k => $v) {
        if ($v == '') {
            continue;
        }
        $queryStr .= '&' . $k . '=' . $v;

    }

    $queryStr = str_replace('?&', '?', $queryStr);
    $queryStr = ampersand($queryStr, $blnEncode);

    // encode query if
    if ($encode) {
        $queryStr = str_replace('?', '', $queryStr);
        $enc = \Cipher::encrypt($queryStr);
        $queryStr = '?vars=' . $enc;
    }
    return $queryStr;
}