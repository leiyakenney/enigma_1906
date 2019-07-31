class Shift
  attr_reader :key, :offset, :char_set

  def initialize(key, offset)
    @key = Key.new(key)
    @offset = Offset.new(offset)

  end

  def shift
    key_hash = @key.keys_hash
    offsets_hash = @offset.offset_hash
    key_hash.merge!(offsets_hash) do |_key, keys_value, offsets_value|
      keys_value + offsets_value
    end
  end

end
