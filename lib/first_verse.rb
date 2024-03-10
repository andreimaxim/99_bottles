class FirstVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{pluralized_number(capitalize: true)} of beer on the wall, #{pluralized_number} of beer."
  end

  def pluralized_number(capitalize: false)
    text = case number
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{number} bottles"
    end

    capitalize ? text.capitalize : text
  end
end
