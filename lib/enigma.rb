require './modules/enigma_helper_module'
require './test/test_helper'

class Enigma
  include EnigmaHelper
  attr_reader :char_set

  def shift(key, date)
    Shift.new(key, date).shift
  end

  def char_set
    ("a".."z").to_a << " "
  end

  def encrypt(message, key, date)
    encrypt_key = Key.new(key)
    encrypt_offset = Offset.new(date)
    encrypt_enigma = Enigma.new
    {encryption: encrypt_enigma.total_msg(message, key, date),
     key: encrypt_key.key_val,
     date: encrypt_offset.date}
  end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
