bubble_sort xs = bubble_sort' xs (length xs)

bubble_sort' xs l
    | l == 0 = xs
    | otherwise = bubble_sort' (bsort' xs) (l - 1)

bsort' (x:y:xs)
    | x > y = y:bsort'(x:xs)
    | otherwise = x:bsort'(y:xs)

bsort' (x) = (x)
