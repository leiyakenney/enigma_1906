class Key
  attr_reader :key

  def initialize
    @key = key
  end

  def random_key
    rand(1..99_999).to_s.rjust(5, '0')
  end



end
