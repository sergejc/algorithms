<?php

function binarySearch($n, $arr) {
    $lBound = 0;
    $hBound = count($arr) - 1;

    while(true) {
        $curIn = ceil(($lBound + $hBound) / 2);
        $curVal = $arr[$curIn];

        if($curVal === $n) return $curVal;
        else if($lBound > $hBound) return count($arr);
        else {
            if($curVal < $n) $lBound = $curIn + 1;
            else $hBound = $curIn - 1;
        }
    }
}

assert(1 === binarySearch(1, [1, 5, 6, 9, 12]));
assert(12 === binarySearch(12, [1, 5, 6, 9, 12]));
assert(6 === binarySearch(6, [1, 5, 6, 9, 12]));
assert(5 === binarySearch(7, [1, 5, 6, 9, 12]));
