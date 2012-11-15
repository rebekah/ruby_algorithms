module BubbleSort
 require_relative 'sort_helper'
 include SortHelper

  def bubble_sort(array)
    array.each do
      swapped = false
      for index in 0..(array.length - 2)
        if array[index] > array[(index + 1)]
          swap(array,index,(index + 1))
          swapped = true
        end
      end
      if swapped == false 
        return array
      end
    end
  end
  


end
