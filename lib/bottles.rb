require_relative "first_verse"
require_relative "second_verse"

class Bottles
  FIRST_NUMBER = 99
  LAST_NUMBER = 0

  def song
    verses(FIRST_NUMBER, LAST_NUMBER)
  end

  def verses(first_number, last_number)
    verse_numbers = range_to_verse_numbers(first_number, last_number)
    verse_numbers.map { |number| verse(number) }.join("\n")
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
