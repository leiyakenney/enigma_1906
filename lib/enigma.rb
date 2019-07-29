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
    encrypt_hash = {}
    encrypt_hash[:encryption] = encrypt_enigma.total_msg(message, key, date)
    # binding.pry
    encrypt_hash[:key] = encrypt_key.key_val
    encrypt_hash[:date] = encrypt_offset.date
    encrypt_hash
  end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
