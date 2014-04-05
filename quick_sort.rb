# quick sort: O(n*log n) average; faster than others in practice
# not stable
# remember: pick pivot, recursively divide into less and greater
# base case: arr.length == 0 or 1 is already sorted, just return it

require 'pry'

def quick_sort(arr)
  return arr if arr.length <= 1

  pivot   = arr.delete_at(rand(0..arr.length - 1))
  less    = Array.new()
  greater = Array.new()

  arr.each do |value|
    pivot > value ? less << value : greater << value
  end
  quick_sort(less) + [pivot] + quick_sort(greater)
end

binding.pry
