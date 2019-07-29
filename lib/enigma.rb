class Enigma
  attr_reader :message, :key, :offset, :shift, :msg_arr

  def initialize(message, key, date)
    @message = message
    @key = key
    @offset = date
    @shift = shift
    @msg_arr = @message.split('')
  end

  # def array_for_shift
  #   letter_arrays = []
  #   @msg_arr.each_slice(4) do |slice|
  #     letter_arrays.push(slice)
  #   end
  #   letter_arrays
  # end

  def array_for_shift
    a_array = []
    b_array = []
    c_array = []
    d_array = []
    @mst_arr.map.with_index do |ltr|
      if % 4 == 0
        a_array << ltr
      elsif % 4

  end
  # def encrypt(message, key, date)
  #
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
