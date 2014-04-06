# quick sort: O(n*log n) average; faster than others in practice
# not stable
# remember: pick pivot, recursively divide into less and greater
# base case: arr.length == 0 or 1 is already sorted, just return it

def quick_sort(arr)
  if arr.length <= 1
    arr
  else
    less    = Array.new()
    greater = Array.new()
    pivot   = arr.delete_at(rand(0..arr.length - 1))

    arr.each do |value|
      if value <= pivot
        less << value
      else
        greater << value
      end
    end
    quick_sort(less) + [pivot] + quick_sort(greater)
  end
end
