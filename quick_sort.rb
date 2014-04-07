# quick sort: O(n*log n) average; faster than others in practice
# not stable

# recursive: base case return arr if length <= 1
# otherwise create new less/greater than arrays and pick pivot
# iterate through arr.each and push value into less or greater based on pivot
# for non-base case return quick_sort(less) + [pivot] + quick_sort(greater)

class Array
  def quick_sort
    if self.length <=1 then self
    else
      pivot = self.delete_at(rand(0...self.length))
      less = Array.new()
      greater = Array.new()

      self.each do |value|
        if value <= pivot
          less << value
        else
          greater << value
        end
      end
      less.quick_sort + [pivot] + greater.quick_sort
    end
  end
end

# Non instance method version:

# def quick_sort(arr)
#   if arr.length <= 1
#     arr
#   else
#     less = Array.new()
#     greater = Array.new()
#     pivot = arr.delete_at(rand(0..arr.length - 1))

#     arr.each do |value|
#       if value <= pivot
#         less << value
#       else
#         greater << value
#       end
#     end
#     quick_sort(less) + [pivot] + quick_sort(greater)
#   end
# end
