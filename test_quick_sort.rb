require_relative 'quick_sort'
require 'test/unit'


class TestQuickSort < Test::Unit::TestCase

  def setup
    @instance = Class.new{ include QuickSort }.new
  end

  def test_quicksort
    array = []
    for number in 1..100
      array.push(number)
    end
    shuffled_array = array.shuffle
    assert_equal(array, @instance.quicksort(shuffled_array))
    assert_equal([1,2,2,4,5,7,8,9], @instance.quicksort([8,5,2,4,2,7,9,1]))
  end
  
  def test_swap
    assert_equal([2,1,3,4], @instance.swap([1,2,3,4],0,1))
  end
  
end
