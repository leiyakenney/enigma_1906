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
        "A" => 18,
        "B" => 32,
        "C" => 40,
        "D" => 46
      }
    assert_equal expected, @shift.shift
  end

end
