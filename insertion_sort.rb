# insertion sort: O(n**n) average
# stable, in-place, faster for already sorted lists (often used to add to them)
# remember: pick key of arr[i], iterate to the left of arr[i] until j == 0 or
# key >= a[j-1] (to the left), then stick key there

require 'pry'

def insertion_sort(arr)
  1.upto(arr.length - 1) do |i|
    value = arr[i]
    j = i
    while j > 0 && arr[j-1] > value
      arr[j] = arr[j-1]
      j -= 1
    end
    arr[j] = value
  end
  arr
end

binding.pry
