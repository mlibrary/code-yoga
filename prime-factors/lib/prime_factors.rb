# frozen_string_literal: true

class PrimeFactors
  def self.of(n)
    new(n).factor
  end

  def initialize(n)
    @n       = n
    @divisor = 2
    @factors = []
  end

  def factor
    factor_out_divisor or check_next_divisor until done?
    factors
  end

  private

  attr_reader :n, :divisor, :factors

  def done?
    n < 2 || divisor > n
  end

  def factor_out_divisor
    if n % divisor == 0
      @factors << divisor
      @n /= divisor
    end
  end

  def check_next_divisor
    @divisor += 1
  end
end
