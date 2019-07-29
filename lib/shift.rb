class Shift
  attr_reader :key, :offset

  def initialize(key, offset)
    @key = Key.new(12345)
    @offset = Offset.new(280719)
  end

  def shift
    key_hash = @key.keys_hash
    offsets_hash = @offset.offset_hash
    key_hash.merge!(offsets_hash) do |key, keys_value, offsets_value|
      keys_value + offsets_value
    end
  end

end
