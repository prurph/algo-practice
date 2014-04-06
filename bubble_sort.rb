# bubble sort: O(n**2) average
# in place, stable
# remember: start at index 0, look ahead and swap if necessary
# largest terms "bubble up"

def bubble_sort(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end
