class SecondVerse
  def initialize(number)
    @number = number
  end

  def to_s
    case @number
    when -1
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 0
      "Take it down and pass it around, #{second_part}\n"
    else
      "Take one down and pass it around, #{second_part}\n"
    end
  end

  private

  def second_part
    "#{Bottles.number_with_bottles(@number)} of beer on the wall."
  end
end
