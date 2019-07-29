require './test/test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new(280719)
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_attributes
    assert_equal 280719, @offset.date
  end

  def test_offset_hash
    expected = {
      "A" => 6,
      "B" => 9,
      "C" => 6,
      "D" => 1
    }
    assert_equal expected, @offset.offset_hash
  end

end
