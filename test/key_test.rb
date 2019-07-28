require './test/test_helper'


class KeyTest < Minitest::Test

  def setup
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key_1
  end

  def test_random_key_attributes
    assert @key_1.random_key.between?('00001', '99999')
    assert_equal 5, @key_1.random_key.length
  end

  def test_random_key
    @key_1 = stub(random_key: '12345')
    assert_equal '12345', @key_1.random_key
  end

  def test_keys_hash
    @key_1 = stub(keys_hash: ({"A" => 3, "B" => 5, "C" => 7, "D" => 9}))
    expected = {
      "A" => 3,
      "B" => 5,
      "C" => 7,
      "D" => 9
    }

    assert_equal expected, @key_1.keys_hash
  end

  # def test_given_key_attributes
  #   assert @key.given_key.between?('00001', '99999')
  # end

end
