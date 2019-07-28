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
    assert @key.random_key.between?('00001', '99999')
    assert_equal 5, @key.random_key.length
  end

  # def test_given_key_attributes
  #   assert @key.given_key.between?('00001', '99999')
  # end

end
