def selection_sort(lst):
    """Return sorted list
    >>> selection_sort([3, 1, 6, 0])
    [0, 1, 3, 6]
    >>> selection_sort([3, 1])
    [1, 3]
    >>> selection_sort([4])
    [4]
    >>> selection_sort([])
    []
    """
    l = len(lst)
    for i in range(l - 1):
        pos = i
        for j in range(i + 1, l):
            if lst[j] < lst[pos]:
                pos = j

        if pos > i:
            lst[i], lst[pos] = lst[pos], lst[i]

    return lst

if __name__ == '__main__':
    import doctest
    doctest.testmod()
