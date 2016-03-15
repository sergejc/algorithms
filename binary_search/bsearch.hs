binarySearch' xs x lBound hBound
    | lBound > hBound = -1
    | x == curVal = curIn
    | curVal > x = binarySearch' xs x lBound (curIn - 1)
    | otherwise = binarySearch' xs x (curIn + 1) hBound
    where curIn = quot (lBound + hBound) 2
          curVal = xs !! curIn


binarySearch xs x =
    let lBound = 0
        hBound = length xs - 1
    in binarySearch' xs x lBound hBound
