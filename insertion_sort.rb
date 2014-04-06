# insertion sort: O(n**n) average
# stable, in-place, faster for already sorted lists (often used to add to them)
# remember: delete value at i, then iterate to the right until get to the end or
# arr[j-1] > value and then insert the value at j+1

def insertion_sort(arr)
  1.upto(arr.length - 1) do |i|
    value = arr.delete_at(i)
    j = i - 1
    j -= 1 while j >= 0 && arr[j-1] > value
    arr.insert(j+1, value)
  end
  arr
end
