# bubble sort: O(n**2) average
# in place, stable

# loop through arr.length - 1 times, swapped = false then look one ahead and swap
# if necessary, set swapped = true; break if !swapped

class Array
  def bubble_sort
    loop do
      swapped = false
      (length - 1).times do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          swapped = true
        end
      end
      break unless swapped
    end
    self
  end
end

# Non instance-method version:

# def bubble_sort(arr)
#   loop do
#     swapped = false
#     (arr.length - 1).times do |i|
#       if arr[i] > arr[i+1]
#         arr[i], arr[i+1] = arr[i+1], arr[i]
#         swapped = true
#       end
#     end
#     break arr unless swapped
#   end
# end
