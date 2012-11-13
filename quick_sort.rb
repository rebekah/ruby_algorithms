module QuickSort

  require 'active_support/core_ext/hash'
  
  def quicksort(array,from = 0,to = (array.length - 1))
    length = to - from
    if array.length <= 1
      return array
    else 
      divider = from
      if length % 2 == 0
        pivot_index = to - (length/2)
      else
        pivot_index = to - ((length + 1)/2)
      end
      for index in (from..to)
        if array[index] < array[pivot_index] 
          unless divider == index
            if divider == pivot_index
              pivot_index = index
            end
            array = swap(array,index,divider)
          end
          divider += 1
        end
      end
      array = swap(array, pivot_index,divider)
      pivot_index = divider
      unless [from,(from+1)].include?(divider)
        less_then_pivot_array_start = from
        less_then_pivot_array_end = pivot_index - 1
        quicksort(array, less_then_pivot_array_start, less_then_pivot_array_end)
      end
      unless [to,(to + 1)].include?(divider)
        more_then_pivot_array_start = pivot_index + 1
        more_then_pivot_array_end = to
        quicksort(array, more_then_pivot_array_start, more_then_pivot_array_end)
      end
    end
    array
  end
  

  def swap(array,item_1_index,item_2_index)
      swap_item_1 = array[item_1_index]
      swap_item_2 = array[item_2_index]
      array[item_1_index] = swap_item_2
      array[item_2_index] = swap_item_1
      array
  end
    
end
