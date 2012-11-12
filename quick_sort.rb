module QuickSort

  require 'active_support/core_ext/hash'
  
  def quicksort(array,from = 0,to = (array.length - 1))
  puts "array: #{array}"
  puts "from: #{from}"
  puts "to: #{to}"
    length = to - from
    puts "length: #{length}"
    if length <= 1
      array
    else
      divider = from
      if length % 2 == 0
        pivot_index = to - (length/2)
      else
        pivot_index = to - ((length + 1)/2)
      end
      puts "pivot_index: #{pivot_index}"
      for index in (from..to)
        puts "index_in_for_loop: #{index}"
        if array[index] < array[pivot_index] 
          unless divider == index 
            swap(array,index,divider)
          end
          divider += 1
        end
      end
      if pivot_index < divider
        index_to_left_of_divider = divider - 1
        swap(array, pivot_index,index_to_left_of_divider)
        pivot_index = index_to_left_of_divider
      else
        swap(array, pivot_index,divider)
        pivot_index = divider
      end
      less_then_pivot_array_start = 0
      less_then_pivot_array_end = pivot_index - 1
      more_then_pivot_array_start = pivot_index + 1
      more_then_pivot_array_end = array.length - 1
      quicksort(array, less_then_pivot_array_start, less_then_pivot_array_end)
      quicksort(array, more_then_pivot_array_start, more_then_pivot_array_end)
    end
  end
  
  def swap(array,item_1_index,item_2_index)
      swap_item_1 = array[item_1_index]
      swap_item_2 = array[item_2_index]
      array[item_1_index] = swap_item_2
      array[item_2_index] = swap_item_1
  end
    
end
