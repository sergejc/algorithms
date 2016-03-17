def bubble_sort(lst):
    """Sort numbers
    >>> bubble_sort([2])
    [2]
    >>> bubble_sort([2, 1])
    [1, 2]
    >>> bubble_sort([3, 4, 1])
    [1, 3, 4]
    """
    lst_len = len(lst) - 1
    for i in range(lst_len, -1, -1):
        for j in range(i):
            if  lst[j] > lst[j + 1]:
                tmp = lst[j]
                lst[j] = lst[j + 1]
                lst[j + 1] = tmp
    return lst


if __name__ == '__main__':
    import doctest
    doctest.testmod()
