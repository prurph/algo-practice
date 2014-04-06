# selection sort: O(n**n) average
# stable, in-place
# remember: iterate through from 0, set as min, then iterate up, resetting index
# min if a lower element is found; then swap the current index with index_min if
# they are different

def selection_sort(arr)
  (arr.length - 1).times do |i|
    index_min = i
    (i+1).upto(arr.length - 1) do |j|
      index_min = j if arr[j] < arr[index_min]
    end
    arr[i], arr[index_min] = arr[index_min], arr[i] unless i == index_min
  end
  arr
end
