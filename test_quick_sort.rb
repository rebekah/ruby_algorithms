require_relative 'quick_sort'
require 'test/unit'


class TestQuickSort < Test::Unit::TestCase
  def setup
    @instance = Class.new{ include QuickSort }.new
  end

  def test_quicksort
    assert_equal([1,2,2,4,5,7,8,9], @instance.quicksort([4,5,2,1,7,8,9,2])) # test the output value given the input params
  end
end
