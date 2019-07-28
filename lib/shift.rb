class Shift
  attr_reader :key, :offset

  def initialize
    @key = Key.new
    @offset = Offset.new
  end

  def shift
    key_hash = @key.keys_hash
    offsets_hash = @offset.offset_hash
    key_hash.merge!(offsets_hash) { |key, keys_value, offsets_value| keys_value + offsets_value}
    # binding.pry
    p key_hash
  end

end
