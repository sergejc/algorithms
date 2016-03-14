<?php

/**
 * complexity O(N)
 */
function findPos($n, $arr) {
    for($i = 0, $len = count($arr); $i < $len; $i++) {
        if($n === $arr[$i]) break;
    }

    if($i === $len) return -1;
    return $i;
}

function findPosRec($n, $arr) {
    if(empty($arr)) return -1;
    if($cur = array_pop($arr) === $n) return count($arr);
    return findPosRec($n, $arr);
}


$arr = [1, 4, 12, 3, 2];

assert(2 == findPos(12, $arr));
assert(0 == findPos(1, $arr));
assert(4 == findPos(2, $arr));
assert(-1 == findPos(7, $arr));

assert(2 == findPosRec(12, $arr));
assert(0 == findPosRec(1, $arr));
assert(4 == findPosRec(2, $arr));
assert(-1 == findPosRec(7, $arr));
