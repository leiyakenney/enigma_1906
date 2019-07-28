class Shift
  attr_reader :key, :offset

  def initialize
    @key = Key.new
    @offset = Offset.new
  end

  def shift
    keys_hash = @key.keys_hash #{"A" => 3, "B" => 5, "C" => 7, "D" => 9}
    offsets_hash = @offset.offset_hash #{"A" => 6, "B" => 9, "C" => 6, "D" => 1}
    keys_hash.merge!(offsets_hash) { |key, keys_value, offsets_value| keys_value + offsets_value}
    p keys_hash
  end

end
