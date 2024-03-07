class Bottles
  def verse(number)
    "#{first_line(number)}\n#{second_line(number - 1)}\n"
  end

  private

  def first_line(number)
    "#{pluralize(number)} of beer on the wall, #{pluralize(number)} of beer."
  end

  def second_line(number)
    first = if number >= 1
      "Take one down and pass it around"
    else
      "Take it down and pass it around"
    end

    "#{first}, #{pluralize( number)} of beer on the wall."
  end

  def pluralize(number)
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
