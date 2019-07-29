class Key
  attr_reader :key_val

  def initialize(key_val)
    @key_val = key_val.to_s.rjust(5, '0')
  end

  def random_key
    rand(1..99_999).to_s.rjust(5, '0')
  end

  def keys_hash
    hash_of_keys = Hash.new(0)
      hash_of_keys["A"] = @key_val[0..1].to_i
      hash_of_keys["B"] = @key_val[1..2].to_i
      hash_of_keys["C"] = @key_val[2..3].to_i
      hash_of_keys["D"] = @key_val[3..4].to_i
    hash_of_keys
  end
end
