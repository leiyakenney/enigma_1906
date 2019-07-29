module EnigmaHelper

  def special_chars(message)
    special_chars_hash = {}
    message.downcase.split('').each do |char|
      if !char_set.include?(char)
        special_chars_hash[char] = message.index(char)
      end
    end
    special_chars_hash
  end

  def hash_for_shifting(message, key, date)
    shift_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    index = 0
    message.downcase.split('').map do |letter|
      if char_set.include?(letter)
        if index == 0 || index % 4 == 0
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

  def shift_hash(message, key, date)
    ltr_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    hash_for_shifting(message, key, date).each do |key, ltr_arr|
      ltr_arr.each do |ltr|
        ltr_hash[key] << char_set.index(ltr)
      end
    end
    shifted_ltrs_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    shift(key, date).each do |shift_key, shift_amt|
      shifted_chars = char_set.rotate(shift_amt)
      ltr_hash[shift_key].map do |index|
        shifted_ltrs_hash[shift_key] << shifted_chars[index]
      end
    end
    shifted_ltrs_hash
  end

  def shifted_hash_to_msg(message, key, date)
    shift_hash(message, key, date).values.reduce(&:zip).join
  end

  def total_msg(message, key, date)
    shifted_message = shifted_hash_to_msg(message, key, date)
    special_chars(message).each do |char, index|
      if index > shifted_message.size
        shifted_message = shifted_message + char
      else
        shifted_message.insert(index, char)
      end
    end
    shifted_message
  end

  def decrypt_hash(message, key, date)
    ltr_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    hash_for_shifting(message, key, date).each do |key, ltr_arr|
      ltr_arr.each do |ltr|
        ltr_hash[key] << char_set.index(ltr)
      end
    end
    decrypted_ltrs_hash = {"A" => [], "B" => [], "C" => [], "D" => []}
    shift(key, date).each do |shift_key, shift_amt|
      shifted_chars = char_set.rotate(shift_amt *= -1)
      ltr_hash[shift_key].map do |index|
        decrypted_ltrs_hash[shift_key] << shifted_chars[index]
      end
    end
    decrypted_ltrs_hash
  end

  def decrypted_hash_to_msg(message, key, date)
    decrypt_hash(message, key, date).values.reduce(&:zip).join
  end

  def total_decrypt_msg(message, key, date)
    decrypted_message = decrypted_hash_to_msg(message, key, date)
    special_chars(message).each do |char, index|
      if index > decrypted_message.size
        decrypted_message = decrypted_message + char
      else
        decrypted_message.insert(index, char)
      end
    end
    decrypted_message
  end

end
