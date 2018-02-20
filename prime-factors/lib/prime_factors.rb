# frozen_string_literal: true

module PrimeFactors
  def self.for(n)
    factors = []
    while n > 1
      2.upto(n).each do |divisor|
        while n % divisor == 0
          factors << divisor
          n /= divisor
        end
      end
    end
    factors
  end
end
