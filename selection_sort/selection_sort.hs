import Data.List

selection_sort xs
        | null xs = []
        | otherwise = selection_sort (delete lmax xs) ++ [lmax]
        where lmax = maximum xs
