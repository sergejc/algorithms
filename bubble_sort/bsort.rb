def bubble_sort(arr)
    (1..(arr.length - 1)).reverse_each do |i|
        for j in 0..(i -1)
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
    arr
end

raise "bubble sort failed" unless bubble_sort([]) == []
raise "bubble sort failed" unless bubble_sort([6]) == [6]
raise "bubble sort failed" unless bubble_sort([6, 1]) == [1, 6]
raise "bubble sort failed" unless bubble_sort([1, 6, 5, 12]) == [1,5,6,12]
