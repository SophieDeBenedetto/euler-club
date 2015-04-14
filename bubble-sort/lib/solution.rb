require 'pry'
def bubble_sort(array)
  i = 0
  while i < (array.size - 1)
    # binding.pry
    if array[i] > array[i + 1]
      array[1] = array[i + 1]
    end
    i += 1
  end
  array
end
