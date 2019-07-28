class Offset
  attr_reader :date

  def initialize
    @date = Date.today.strftime("%d%m%y").to_i
  end

end
