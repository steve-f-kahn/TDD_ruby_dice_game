class Dice
  attr_reader(:result)
  def initialized
    @result = []
  end
  def roll(number = 1)
    @result = []
    number.times { @result << 1 + rand(5) }
    @result
  end
end
