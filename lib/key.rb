class Key
  attr_reader :key

  def initialize
    @key = key
  end

  def random_key
    random_digits = rand(1..99_999).to_s
    if random_digits.length < 5
      random_digits.rjust(5, '0')
    end
    random_digits
  end

  # def given_key
  # end


end
