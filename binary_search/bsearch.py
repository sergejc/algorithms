def binary_search_rec(n, lst, lBound, hBound):
    if lBound > hBound:
        return len(lst)
    else:
        curIn = (lBound + hBound) / 2
        curVal = lst[curIn]

        if curVal == n:
            return curIn
        elif curVal > n:
            return binary_search_rec(n, lst, lBound, curIn - 1)
        else:
            return binary_search_rec(n, lst, curIn + 1, hBound)

def binary_search(n, lst):
    """Returns index of element in the list
    >>> binary_search(1, [1, 5, 6, 9, 12])
    0
    >>> binary_search(12, [1, 5, 6, 9, 12])
    4
    >>> binary_search(6, [1, 5, 6, 9, 12])
    2
    >>> binary_search(7, [1, 5, 6, 9, 12])
    5
    """
    return binary_search_rec(n, lst, 0, len(lst) - 1)

if __name__ == '__main__':
    import doctest
    doctest.testmod()
