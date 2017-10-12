class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{bottle_group(number).capitalize} of beer on the wall, #{bottle_group(number)} of beer.\n"+
    "#{what_to_do(number)}"+
    "#{bottle_group(number-1)} of beer on the wall.\n"
  end

  def what_to_do(number)
    case number
    when 0
      "Go to the store and buy some more, "
    else
      "Take #{pronoun(number)} down and pass it around, "
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def bottle_group(number)
    case number
      when -1
        "99 bottles"
      when 0
        "no more bottles"
      when 1
        "1 bottle"
      else
        "#{number} bottles"
    end
  end
end
