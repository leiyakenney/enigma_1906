class Enigma
  attr_reader :char_set

  def initialize
    # @message = message
    # @key = key
    # @offset = offset
    @shift = Shift.new(12345, 280719).shift
    @char_set = ("a".."z").to_a << " "
    # @msg_arr = @message.split('')
  end

  # def array_for_shift(message)
  #   letter_arrays = []
  #
  # end

  def hash_for_shifting(message)
    shift_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    index = 0
    message.split('').map do |letter|
      if @char_set.include?(letter)
        if index == 0 || index % 4 == 0
          shift_hash["A"] << letter
        elsif index % 4 == 0
          shift_hash["A"] << letter
        elsif index % 4 == 1
          shift_hash["B"] << letter
        elsif index % 4 == 2
          shift_hash["C"] << letter
        elsif index % 4 == 3
          shift_hash["D"] << letter
        end
        index += 1
      end
    end
    shift_hash
  end

  def shift_hash(message)
    ltr_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    hash_for_shifting(message).each do |key, ltr_arr|
      ltr_arr.each do |ltr|
        ltr_hash[key] << @char_set.index(ltr)
      end
    end
    shifted_ltrs_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    @shift.each do |key, shift_amt|
      shifted_chars = @char_set.rotate(shift_amt)
      ltr_hash[key].each do |index|
        shifted_ltrs_hash[key] << shifted_chars[index]
      end
    end
    shifted_ltrs_hash
    end

      # key.each do |key_val|
      #   ltr_arr.each_with_index do |ltr, index|
      #     ltr_index << index
      #   end
      #   if hash_for_shifting[key] == shift[key]
      #     @char_set.rotate(shift[key])
      #   end
      #   @char_set.map do |character|
      #     return @char_set.ltr_index
      #   end
      # end
    # end

  # def encrypt(message, key, date)
  #
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
