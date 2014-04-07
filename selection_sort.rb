# selection sort: O(n**2) average
# stable, in-place

# for 0..length - 1 set index_min, then iterate through the rest and reset
# index_min; swap the elements to get the smallest at arr[i]

class Array
  def selection_sort
    (self.length - 1).times do |i|
      index_min = self[i]
      (i+1).upto(self.length - 1) do |j|
        index_min = j if self[j] < index_min
      end
      self[index_min], self[i] = self[i], self[index_min] unless i == index_min
    end
    self
  end
end

# Non instance-method version:

# def selection_sort(arr)
#   (arr.length - 1).times do |i|
#     index_min = i
#     i.upto(arr.length - 1) do |j|
#       index_min = j if arr[j] < arr[index_min]
#     end
#     arr[i], arr[index_min] = arr[index_min], arr[i] unless index_min == i
#   end
#   arr
# end
