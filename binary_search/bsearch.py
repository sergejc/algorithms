def binary_search_rec(n, lst, lBound, hBound):
    if lBound > hBound:
        return len(lst)
    else:
        curIn = (lBound + hBound) / 2
        curVal = lst[curIn]

        if curVal == n:
            return curVal
        elif curVal > n:
            return binary_search_rec(n, lst, lBound, curIn - 1)
        else:
            return binary_search_rec(n, lst, curIn + 1, hBound)

def binary_search(n, lst):
    """Binary search algorithm
    >>> binary_search(1, [1, 5 ,6, 9, 12])
    1
    >>> binary_search(12, [1, 5 ,6, 9, 12])
    12
    >>> binary_search(6, [1, 5 ,6, 9, 12])
    6
    >>> binary_search(7, [1, 5 ,6, 9, 12])
    5
    """
    return binary_search_rec(n, lst, 0, len(lst) - 1)

binary_search_rec(5, [1, 5 ,6, 9, 12], 0, 4)

if __name__ == '__main__':
    import doctest
    doctest.testmod()
