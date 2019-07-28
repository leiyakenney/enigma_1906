class Offset
  attr_reader :date

  def initialize
    @date = Date.today.strftime("%d%m%y").to_i
  end

  def offset_hash
    offset_array = (@date ** 2).to_s.split("")[-4..-1]
    hash_of_offsets = Hash.new(0)
      hash_of_offsets["A"] += offset_array[0].to_i
      hash_of_offsets["B"] += offset_array[1].to_i
      hash_of_offsets["C"] += offset_array[2].to_i
      hash_of_offsets["D"] += offset_array[3].to_i
    hash_of_offsets
  end

end
