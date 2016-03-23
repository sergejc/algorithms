<?php


function selection_sort($arr) {

    $hBound = count($arr) - 1;
    for($i = 0; $i < $hBound; $i++) {

        $pos = $i;
        for($j = $i + 1; $j <= $hBound; $j++) {
            if($arr[$j] < $arr[$pos]) $pos = $j;
        }

        if($pos > $i) {
            $tmp = $arr[$i];
            $arr[$i] = $arr[$pos];
            $arr[$pos] = $tmp;
        }
    }

    return $arr;
}

assert([1, 3, 7, 15] == selection_sort([7, 3, 15, 1]));
assert([1, 3] == selection_sort([3, 1]));
assert([15] == selection_sort([15]));
assert([] == selection_sort([]));
