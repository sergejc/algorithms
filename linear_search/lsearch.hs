findPos n lst =
    findPos' n lst 0

findPos' n lst cnt =
    case lst of
        [] ->  -1
        x:xs -> if x == n
                then cnt
                else findPos' n xs (cnt + 1)

