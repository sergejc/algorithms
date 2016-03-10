def find_pos(n, arr)
    arr.each_with_index do |el, i|
        return i if el == n
    end
    -1
end

def find_pos_rec(n, arr)
    return -1 if arr.empty?
    return arr.length if arr.pop() == n
    find_pos_rec(n, arr)
end

raise "First test is wrong" unless find_pos(1, [1, 7, 2, 20, 0]) == 0
raise "Second test is wrong" unless find_pos(20, [1, 7, 2, 20, 0]) == 3
raise "Third test is wrong" unless find_pos(0, [1, 7, 2, 20, 0]) == 4
raise "Fourth test is wrong" unless find_pos(-1, [1, 7, 2, 20, 0]) == -1

raise "First test is wrong" unless find_pos_rec(1, [1, 7, 2, 20, 0]) == 0
raise "Second test is wrong" unless find_pos_rec(20, [1, 7, 2, 20, 0]) == 3
raise "Third test is wrong" unless find_pos_rec(0, [1, 7, 2, 20, 0]) == 4
raise "Fourth test is wrong" unless find_pos_rec(-1, [1, 7, 2, 20, 0]) == -1
