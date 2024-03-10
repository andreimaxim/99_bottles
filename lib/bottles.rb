require_relative "first_verse"
require_relative "second_verse"

class Bottles
  FIRST_NUMBER = 99
  LAST_NUMBER = 0

  class << self
    def number_with_bottles(number)
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

  def song
    verses(FIRST_NUMBER, LAST_NUMBER)
  end

  def verses(first, last)
    range_to_verse_numbers(first, last).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    first_verse = FirstVerse.new number
    second_verse = SecondVerse.new number - 1

    [ first_verse, second_verse ].join("\n")
  end

  private

  def range_to_verse_numbers(first_number, last_number)
    a = first_number < last_number ? first_number : last_number
    b = first_number < last_number ? last_number : first_number

    (a..b).to_a.reverse
  end
end
