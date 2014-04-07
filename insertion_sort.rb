# insertion sort: O(n**n) average
# stable, in-place, faster for already sorted lists (often used to add to them)

# value = delete_at(i), then j = i - 1 (to left), iterate down while value <
# arr[j], then insert(j+1, value)

class Array
  def insertion_sort
    1.upto(self.length - 1) do |i|
      value = self.delete_at(i)
      j = i - 1
      j -= 1 while j >= 0 && value < self[j]
      self.insert(j+1, value)
    end
    self
  end
end

# Non instance-method version:

# def insertion_sort(arr)
#   1.upto(arr.length - 1) do |i|
#     value = arr.delete_at(i)
#     j = i - 1
#     j -= 1 while j >= 0 && value < arr[j]
#     arr.insert(j+1, value)
#   end
#   arr
# end
