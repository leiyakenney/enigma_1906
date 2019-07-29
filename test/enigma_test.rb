require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new('hello world', 12345, 280719)
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_assign_letters_to_keys
    expected = {
      "A" => ['h', 'o', 'r'],
      "B" => ['e', ' ', 'l'],
      "C" => ['l', 'w', 'd'],
      "D" => ['l', 'o']
    }
    assert_equal expected, @shift.assign_letters
  end

  # def test_it_encrypts
  #   expected = {
  #     encryption: "keder ohulw",
  #     key: "02715",
  #     date: "040895"
  #   }
  #   assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  # end
  #
  # def test_it_decrypts
  #   expected = {
  #     decryption: "hello world",
  #     key: "02715",
  #     date: "040895"
  #   }
  #   assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  # end

# #encrypt a message with a key (uses today's date)
# encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# enigma.encrypt("hello world")
# #=> # encryption hash here

end
