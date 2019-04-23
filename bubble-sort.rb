
def bubble_sort array
    change = true
    while change do
      change = false
      array.each_with_index do |value, index|
        if array[index+1] != nil
          if (value <=> array[index+1]) == 1
            array[index], array[index+1] = array[index+1], array[index]
            change = true
          end
        end
      end
    end
    array
  end
  
  def bubble_sort_by array
    change = true
    while change do
      change = false
      array.each_with_index do |value, index|
        if array[index+1] != nil
          if yield(array[index], array[index+1]) > 0
            array[index], array[index+1] = array[index+1], array[index]
            change = true
          end
        end
      end
    end
    array
  end
  
  array = [1, 3, 2, 7, 4, 10, 12, 6, 5]
  array1 = ["this", "far", "away", "like", "twerndf", "to", "abraham"]
  print bubble_sort array
  print "\n"
  result = bubble_sort_by(array1) {|first, second| first.length - second.length}
  print result
  print "\n"