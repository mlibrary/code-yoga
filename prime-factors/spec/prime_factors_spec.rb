# frozen_string_literal: true

require 'prime_factors'

def it_factors_as(n, factors)
  it "factors #{n} as #{factors}" do
    expect(PrimeFactors.for(n)).to eq(factors)
  end
end

RSpec.describe PrimeFactors do
  it_factors_as(1,  [])
  it_factors_as(2,  [2])
  it_factors_as(3,  [3])
  it_factors_as(4,  [2,2])
  it_factors_as(5,  [5])
  it_factors_as(6,  [2,3])
  it_factors_as(7,  [7])
  it_factors_as(8,  [2,2,2])
  it_factors_as(9,  [3,3])
  it_factors_as(10, [2,5])
  it_factors_as(24, [2,2,2,3])
  it_factors_as(30, [2,3,5])
  it_factors_as(60, [2,2,3,5])
  it_factors_as(124740, [2,2,3,3,3,3,5,7,11])
end
