class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    verse_number = VerseNumber.new(number)
    verse_number_next = VerseNumber.new( verse_number.successor )
    "#{verse_number.quantity} #{verse_number.container} of beer on the wall, #{verse_number.quantity} #{verse_number.container} of beer.\n".capitalize \
    + "#{verse_number.action}, #{verse_number_next.quantity} #{verse_number_next.container} of beer on the wall.\n"
  end

end


class VerseNumber
  attr_accessor :number

  def initialize( number )
    @number = number
  end

  def action
    if 0 == number
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def container
    if 1 == number
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if 1 == number
      "it"
    else
      "one"
    end
  end

  def quantity
    if 0 == number
      "no more"
    else
      number
    end
        .to_s
  end

  def successor
    if 0 == number
      99
    else
      number - 1
    end
  end

end

class Verse0 < VerseNumber

  def container
    if 1 == number
      "bottle"
    else
      "bottles"
    end
  end

end
class SixpackVerse < VerseNumber

  def container
    if 1 == number
      "bottle"
    else
      "bottles"
    end
  end

end