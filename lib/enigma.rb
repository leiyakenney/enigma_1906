class Enigma
  attr_reader :char_set

  def initialize
    @shift = Shift.new(12345, 280719).shift
    @char_set = ("a".."z").to_a << " "
  end

  def special_chars(message)
    special_chars_hash = {}
    message.downcase.split('').each do |char|
      if !@char_set.include?(char)
        special_chars_hash[char] = message.index(char)
      end
    end
    special_chars_hash
  end

  def hash_for_shifting(message)
    shift_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    index = 0
    message.downcase.split('').map do |letter|
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

  def shifted_hash_to_msg(message)
    shift_hash(message).values.reduce(&:zip).join
  end

  # def encrypt(message, key, date)
  #
  # end
  #
  # def decrypt(ciphertext, key, date)
  #
  # end

end
