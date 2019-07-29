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

  def encrypt(message, key = Key.new.random_key, date = Offset.new.default_date)
    encrypt_enigma = Enigma.new
    {encryption: encrypt_enigma.total_msg(message, key, date),
    key: key,
    date: date}
  end

  def decrypt(ciphertext, key = Key.new.random_key, date = Offset.new.default_date)
    decrypt_enigma = Enigma.new
    {decryption: decrypt_enigma.total_decrypt_msg(ciphertext, key, date),
    key: key,
    date: date}
end

end
