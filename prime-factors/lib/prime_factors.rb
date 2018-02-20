# frozen_string_literal: true

module PrimeFactors
  def self.for(n)
    factors = []
    divisor = 2

    while n > 1
      while n % divisor == 0
        factors << divisor
        n /= divisor
      end
      divisor += 1
    end

    factors
  end
end
