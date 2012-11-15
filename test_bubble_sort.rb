require_relative 'bubble_sort'
require 'test/unit'

class TestBubbleSort < Test::Unit::TestCase

  def setup
    @instance = Class.new {include BubbleSort}.new
  end
  
  def test_bubble_sort
    array = []
    for number in 1..100
      array.push(number)
    end
    shuffled_array = array.shuffle
    assert_equal(array, @instance.bubble_sort(shuffled_array))
    assert_equal([1,2,2,4,5,7,8,9], @instance.bubble_sort([8,5,2,4,2,7,9,1]))
  end

end
