class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def container(number)
    if number == 6
      "1 six-pack"
    elsif number == -1
      "99 bottles"
    elsif number == 0
      "no more bottles"
    elsif number == 1
      "#{number} bottle"
    else
      "#{number} bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def take_or_store(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def verse(number)
    "#{container(number).capitalize} of beer on the wall, #{container(number)} of beer.\n#{take_or_store(number)}, #{container(number-1)} of beer on the wall.\n"
  end

end
