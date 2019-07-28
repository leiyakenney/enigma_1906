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

  # def test_offset
  #   assert_equal
  # end

end
