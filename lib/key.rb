class Key
  attr_reader :key

  def initialize
    @key = random_key
  end

  def random_key
    rand(1..99_999).to_s.rjust(5, '0')
  end

  # def given_key
  #   @key = given_key
  # end

  def split_by_letter
    key_array = random_key.split('') #|| key_array = given_key.split('')
    keys_hash = Hash.new(0)
      keys_hash["A"] += (key_array[0] + key_array[1]).to_i
      keys_hash["B"] += (key_array[1] + key_array[2]).to_i
      keys_hash["C"] += (key_array[2] + key_array[3]).to_i
      keys_hash["D"] += (key_array[3] + key_array[4]).to_i
    keys_hash
  end
end
