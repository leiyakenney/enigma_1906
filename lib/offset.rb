class Offset
  attr_reader :date

  def initialize
    @date = Date.today.strftime("%d%m%y").to_i
  end

  def offset
    offset_array = (@date ** 2).to_s.split("")[-4..-1]
    offset_hash = Hash.new(0)
      offset_hash["A"] += offset_array[0].to_i
      offset_hash["B"] += offset_array[1].to_i
      offset_hash["C"] += offset_array[2].to_i
      offset_hash["D"] += offset_array[3].to_i
    offset_hash
  end

end
