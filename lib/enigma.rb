require './modules/enigma_helper_module'

class Enigma
  include EnigmaHelper
  attr_reader :char_set

  def initialize
    @shift = Shift.new(12345, 280719).shift
    @char_set = ("a".."z").to_a << " "
  end


  # def encrypt(message, key, date)
  #   encrypt_hash = {}
  #   encrypt_hash[:encryption] = @enigma.total_msg(message)
  #   encrypt_hash[:key] = key.to_s
  #   encrypt_hash[:date] = date.to_s
  #   encrypt_hash
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
