require_relative "first_verse"
require_relative "second_verse"

class Bottles
  def verse(number)
    first_verse = FirstVerse.new number
    second_verse = SecondVerse.new number - 1

    [ first_verse, second_verse ].join("\n")
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
