require './test/test_helper'
require 'mocha/minitest'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_random_key_attributes
    assert @key.random_key.between?('1', '99999')
    p @key.random_key
    assert_equal 5, @key.random_key.length
  end

end
