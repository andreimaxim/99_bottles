class SecondVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    case number
    when -1
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 0
      "Take it down and pass it around, #{second_part}\n"
    else
      "Take one down and pass it around, #{second_part}\n"
    end
  end

  def second_part
    "#{pluralized_number} of beer on the wall."
  end

  def pluralized_number
    case number
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{number} bottles"
    end
  end
end
