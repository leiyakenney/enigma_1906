class Enigma
  attr_reader :message, :key, :offset, :shift, :msg_arr

  def initialize(message, key, date)
    @message = message
    @key = key
    @offset = date
    @shift = shift
    @msg_arr = @message.split('')
  end

  def array_for_shift
    letter_array = []
    @msg_arr.each_slice(4) do |slice|
      letter_array.push(slice)
    end
    letter_array
    binding.pry
  end

  # def encrypt(message, key, date)
  #
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
