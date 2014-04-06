# merge sort: O(n log n) average and maximum; quicksort usually faster in prac
# not in-place, there are stable implementations but this is not
# remember: recursive (base case return array if length <= 1 like quicksort)
# divide intwo two halves, set left/right to merge_sort(left_half), etc
# then call merge(left, right); merge checks if left/right empty and if not
# compares left.first to right.first, appends the smaller to the result of
# merge(left, right) with the appended thing taken out with drop(1), or similar

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = (arr.length / 2) # automatically floored by Fixnum division
  left = merge_sort(arr[0..mid - 1])
  right = merge_sort(arr[mid..-1])
  merge(left, right)
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left.drop(1), right)
  else
    [right.first] + merge(left, right.drop(1))
  end
end
