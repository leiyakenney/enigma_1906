require './test/test_helper'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new(12345)
    @key_2 = Key.new(678)
  end

  def test_it_exists
    assert_instance_of Key, @key
    assert_instance_of Key, @key_2
  end

  def test_key_attributes
    assert @key.key_val.between?('00001', '99999')
    assert @key_2.key_val.between?('00001', '99999')
    assert_equal 5, @key.key_val.length
    assert_equal 5, @key_2.key_val.length
  end

  def test_random_key_attributes
    assert @key.random_key.between?('00001', '99999')
    assert_equal 5, @key.random_key.length
  end

  def test_key
    assert_equal '12345', @key.key_val
    assert_equal '00678', @key_2.key_val
  end

  def test_keys_hash
    expected = {
      "A" => 3,
      "B" => 5,
      "C" => 7,
      "D" => 9
    }

    assert_equal expected, @key.keys_hash
  end


end
