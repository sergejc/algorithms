def selection_sort(lst)
    l = lst.size - 1
    l.times do |i|
        min_pos = i
        i.next.upto(l) do |j|
            min_pos = j if lst[j] < lst[min_pos]
        end

        if min_pos > i
            lst[i], lst[min_pos] = lst[min_pos], lst[i]
        end
    end
    lst
end

raise "first test" unless selection_sort([1, 7, 2, 0]) == [0, 1, 2, 7]
raise "second test" unless selection_sort([7, 1]) == [1,7]
raise "third test" unless selection_sort([7]) == [7]
raise "fourth test" unless selection_sort([]) == []
