require './test/test_helper'


class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_date_attributes
    stub(date: 280719)
    assert_equal 280719, @offset.date
  end

  def test_offset_hash
    stub(date: 280719)
    expected = {
      "A" => 6,
      "B" => 9,
      "C" => 6,
      "D" => 1
    }
    assert_equal expected, @offset.offset_hash
  end

end
