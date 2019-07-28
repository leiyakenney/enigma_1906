class Key
  attr_reader :key

  def initialize
    @key = rand(1..99_999).to_s.rjust(5, '0')
  end

  # def random_key
  #   rand(1..99_999).to_s.rjust(5, '0')
  # end

  # def given_key
  #   @key = given_key
  # end

  def keys_hash
    key_array = key.split('') #|| key_array = given_key.split('')
    hash_of_keys = Hash.new(0)
      hash_of_keys["A"] += (key_array[0] + key_array[1]).to_i
      hash_of_keys["B"] += (key_array[1] + key_array[2]).to_i
      hash_of_keys["C"] += (key_array[2] + key_array[3]).to_i
      hash_of_keys["D"] += (key_array[3] + key_array[4]).to_i
    hash_of_keys
  end
end
