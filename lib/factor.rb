require 'prime'

def factorize(number)
  if factor = 2.upto(number).find { |i| number % i == 0 }
#  if factor = Prime.each(number).find { |i| number % i == 0 }
    [factor,factorize(number / factor)].flatten
  else
    []
  end
end
