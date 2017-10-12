class Integer
  def to_bottle_number
    BottleNumber.for(self)
  end
end

class BottleNumber

  def self.handles?(number)
    true
  end

  def self.registry
    @@registry ||= [BottleNumber]
  end

  def self.register(klass)
    registry.unshift(klass)
  end

  attr_reader :number

  def self.for(number)
    registry.find { |i| i.handles?(number) }.new(number)
  end

  def initialize(number)
    @number = number
  end

  def to_bottle_number
    self
  end

  def successor
    (number-1).to_bottle_number
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def how_many
    number.to_s
  end

  def pronoun
    "one"
  end

  def unit
    "bottles"
  end
end

class BottleNumber0 < BottleNumber
  register(self)

  def self.handles?(n)
    n == 0
  end

  def successor
    99.to_bottle_number
  end

  def how_many
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end
end

class BottleNumber1 < BottleNumber
  register(self)

  def self.handles?(n)
    n == 1
  end

  def pronoun
    "it"
  end

  def unit
    "bottle"
  end
end

class BottleNumberSixPacks < BottleNumber
  register(self)

  def self.handles?(n)
    n == 6
  end

  def pronoun
    "one bottle"
  end

  def how_many
    "1"
  end

  def unit
    "six-pack"
  end
end

class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    this_bottle = number.to_bottle_number
    next_bottle = this_bottle.successor

    "#{this_bottle.how_many} #{this_bottle.unit} of beer on the wall, ".capitalize +
    "#{this_bottle.how_many} #{this_bottle.unit} of beer.\n" +
    "#{this_bottle.action}, " +
    "#{next_bottle.how_many} #{next_bottle.unit} of beer on the wall.\n"
  end

end
