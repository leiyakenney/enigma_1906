class Enigma
  attr_reader :message, :key, :offset

  def initialize(message, key, date)
    @message = message
    @key = key
    @offset = date
  end

end
