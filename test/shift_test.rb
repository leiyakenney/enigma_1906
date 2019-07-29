require './test/test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new(12345, 280719)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_shift_values
    expected = {
        "A" => 9,
        "B" => 14,
        "C" => 13,
        "D" => 10
      }
    assert_equal expected, @shift.shift
  end

  def test_character_set
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @shift.char_set
  end
end
