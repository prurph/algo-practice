# selection sort: O(n**n) average
# stable, in-place
# remember: iterate through from 0, set as min, then iterate up, resetting index
# min if a lower element is found; then swap the current index with index_min if
# they are different

require 'pry'

def selection_sort(arr)
  len = arr.length
  (len - 1).times do |i|
    index_min = i
    (i + 1).upto(len - 1) do |j|
      index_min = j if arr[j] < arr[index_min]
    end
    arr[index_min], arr[i] = arr[i], arr[index_min] unless index_min == i
  end
  arr
end

binding.pry
