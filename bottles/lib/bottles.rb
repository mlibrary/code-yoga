class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map {|i| verse(i)}.join("\n")
  end

  def beer_bottle_group(num)
    case num
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{num} bottles"
    end
  end

  def pronoun(num)
    case num
    when 1
      'it'
    else
      'one'
    end
  end

  class BottleSet
    attr_reader :num

    def initialize(n)
      @num = n
    end

    def description
      case num
      when 0
        "no more bottles"
      when 1
        "1 bottle"
      else
        "#{num} bottles"
      end
    end

    def pronoun
      "one"
    end

    def prev
      self.class.from(num - 1)
    end

    def instruction
      "Take #{pronoun} down and pass it around"
    end

    def self.from(num)
      case num
      when 0
        NoBottles.new(num)
      when 1
        SingleBottle.new(num)
      else
        self.new(num)
      end
    end
  end

  class SingleBottle < BottleSet
    def pronoun
      "it"
    end

    def description
      "1 bottle"
    end

    def prev
      BottleSet.from(0)
    end
  end

  class NoBottles < BottleSet
    def pronoun
      "no more"
    end

    def instruction
      "Go to the store and buy some more"
    end

    def prev
      BottleSet.from(99)
    end
  end


  def verse(number)
    bs = BottleSet.from(number)
    "#{bs.description.capitalize} of beer on the wall, #{bs.description} of beer.\n" +
        "#{bs.instruction}, #{bs.prev.description} of beer on the wall.\n"
  end

end
