<?php

/**
* complexity O(N*N)
*/
function swap(&$arr, $i, $j) {
    $tmp = $arr[$j];
    $arr[$j] = $arr[$j + 1];
    $arr[$j + 1] = $tmp;
}

function bubbleSort($arr) {
    for($i = count($arr) - 1; $i > 0; $i--) {
        for($j = 0; $j < $i; $j++) {
            if($arr[$j] > $arr[$j + 1]) {
                swap($arr, $i, $j);
            }
        }
    }
    return $arr;
}

assert([-1, 0, 1, 3, 7, 10] === bubbleSort([3, 1, 0, 10, 7, -1]));
