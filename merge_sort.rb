# merge sort: O(n*log n) average and maximum; quicksort usually faster in prac
# not in-place, there are stable implementations but this is not

# recursive: base case return array if length <= 1
# otherwise divide array into left, right halves, call merge(left, right)
# merge merges arrays by checking if left or right empty, otherwise comparing
# left.first and right.first, then returning the smaller + merge(left, right)
# with the first removed with left.drop(1) or right.drop(1)

class Array
  def merge_sort
    if self.length <= 1 then self
    else
      mid = self.length / 2
      left  = self[0..mid - 1].merge_sort
      right = self[mid..-1].merge_sort
      left.merge(right)
    end
  end
  def merge(right)
    if empty?
      right
    elsif right.empty?
      self
    elsif self.first < right.first
      [self.first] + (self.drop(1)).merge(right)
    else
      [right.first] + merge(right.drop(1))
    end
  end
end

# Non instance method version:

# def merge_sort(arr)
#   if arr.length <= 1
#     arr
#   else
#     mid = arr.length / 2
#     left = arr[0..mid - 1]
#     right = arr[mid..-1]
#     merge(left, right)
#   end
# end

# def merge(left, right)
#   if left.empty?
#     right
#   elsif right.empty?
#     left
#   elsif left.first < right.first
#     [left.first] + merge(left.drop(1), right)
#   else
#     [right.first] + merge(left, right.drop(1))
#   end
# end
