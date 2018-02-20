require 'spec_helper'
require 'factor'

describe "something" do
  it "returns a list" do
    expect(factorize(60)).to respond_to(:"[]")
  end
  
  it "can factor 1" do
    expect(factorize(1)).to eq([])
  end
  
  it "can correctly factor 60" do
    expect(factorize(60)).to contain_exactly(2,2,3,5)
  end

  it "correctly factors something that has 7 as a prime factor" do
    expect(factorize(7*3*2)).to contain_exactly(7,3,2)
  end

  2.upto(10000) do  |n|
    it "factors #{n} to an array that multiplies to #{n}" do
      expect(factorize(n).reduce(:*)).to eq(n)
    end
  end

end
