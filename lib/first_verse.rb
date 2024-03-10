class FirstVerse
  def initialize(number)
    @number = number
  end

  def to_s
    number_with_bottles = Bottles.number_with_bottles(@number)

    "#{number_with_bottles.capitalize} of beer on the wall, #{number_with_bottles} of beer."
  end
end
