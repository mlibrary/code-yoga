# frozen_string_literal: true

module PrimeFactors
  def self.for(n, factors = [])
    return factors if n < 2
    2.upto(n) do |divisor|
      if n % divisor == 0
        return self.for(n / divisor, factors + [divisor])
      end
    end
    [n]
  end
end
