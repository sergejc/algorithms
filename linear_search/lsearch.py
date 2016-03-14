import sys

def find_pos(n, lst):
    """Returns index of element in the list
    >>> find_pos(1, [1, 7, 2, 20, 0])
    0
    >>> find_pos(20, [1, 7, 2, 20, 0])
    3
    >>> find_pos(0, [2, 7, 2, 20, 0])
    4
    >>> find_pos(3, [2, 7, 2, 20, 0])
    -1
    """
    for i, v in enumerate(lst):
        if v == n:
            return i
    return -1;

def find_pos_rec(n, lst):
    """Returns index of element in the list
    >>> find_pos_rec(1, [1, 7, 2, 20, 0])
    0
    >>> find_pos_rec(20, [1, 7, 2, 20, 0])
    3
    >>> find_pos_rec(0, [2, 7, 2, 20, 0])
    4
    >>> find_pos_rec(3, [2, 7, 2, 20, 0])
    -1
    """
    if not lst:
        return -1
    if n == lst.pop():
        return len(lst)

    return find_pos_rec(n, lst)


if __name__ == '__main__':
    import doctest
    doctest.testmod()

