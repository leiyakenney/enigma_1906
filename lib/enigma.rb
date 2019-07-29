class Enigma
  attr_reader :char_set

  def initialize
    # @message = message
    # @key = key
    # @offset = offset
    # @shift = shift
    @char_set = ("a".."z").to_a << " "
    # @msg_arr = @message.split('')
  end

  # def array_for_shift
  #   letter_arrays = []
  #   @msg_arr.each_slice(4) do |slice|
  #     letter_arrays.push(slice)
  #   end
  #   letter_arrays
  # end

  def hash_for_shift(message)
    shift_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    index = 0
    message.split('').map do |letter|
      if @char_set.include?(letter)
        if index == 0
          shift_hash["A"] << letter
        elsif index != 0
          if index % 4 == 0
            shift_hash["A"] << letter
          elsif index % 4 == 1
            shift_hash["B"] << letter
          elsif index % 4 == 2
            shift_hash["C"] << letter
          elsif index % 4 == 3
            shift_hash["D"] << letter
          end
        end
        index += 1
      end
    end
    shift_hash
  end

  # def shift_hash
  #
  # end
  # def encrypt(message, key, date)
  #
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
