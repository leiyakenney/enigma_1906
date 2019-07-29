require './test/test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_shift_values
    @key = stub(keys_hash: ({"A" => 3, "B" => 5, "C" => 7, "D" => 9}))
    @offset = stub(date: 280719)
    expected = {
        "A" => 9,
        "B" => 14,
        "C" => 13,
        "D" => 10
      }
    assert_equal expected, @shift.shift
  end
end
