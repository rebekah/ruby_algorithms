module SortHelper

  def swap(array,item_1_index,item_2_index)
      swap_item_1 = array[item_1_index]
      swap_item_2 = array[item_2_index]
      array[item_1_index] = swap_item_2
      array[item_2_index] = swap_item_1
      array
  end

end
