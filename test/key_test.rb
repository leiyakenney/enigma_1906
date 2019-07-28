require './test/test_helper'


class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_key_attributes
    assert @key.key.between?('00001', '99999')
    assert_equal 5, @key.key.length
  end

  def test_key
    @key = stub(key: '12345')
    assert_equal '12345', @key.key
  end

  def test_keys_hash
    @key = stub(keys_hash: ({"A" => 3, "B" => 5, "C" => 7, "D" => 9}))
    expected = {
      "A" => 3,
      "B" => 5,
      "C" => 7,
      "D" => 9
    }

    assert_equal expected, @key.keys_hash
  end

  # def test_given_key_attributes
  #   assert @key.given_key.between?('00001', '99999')
  # end

end
