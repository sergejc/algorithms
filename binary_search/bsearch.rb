def binary_search_helper(n, lst, lBound, hBound)
    if lBound > hBound
        lst.length
    else
        curIn = (lBound + hBound) / 2
        curVal = lst[curIn]

        if curVal == n
            curVal
        elsif curVal > n
            binary_search_helper(n, lst, lBound, curIn - 1)
        else
            binary_search_helper(n, lst, curIn + 1, hBound)
        end
    end
end

def binary_search(n, lst)
    binary_search_helper(n, lst, 0, lst.length - 1)
end

raise "First test is wrong" unless binary_search(1, [1, 5, 6, 9, 12]) == 1
raise "Second test is wrong" unless binary_search(12, [1, 5, 6, 9, 12]) == 12
raise "Third test is wrong" unless binary_search(6, [1, 5, 6, 9, 12]) == 6
raise "Fourth test is wrong" unless binary_search(7, [1, 5, 6, 9, 12]) == 5
