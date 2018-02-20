require 'prime'

class PrimeFactor
  def initialze; end

  def factors(n)
    return [] if n == 1

    if is_prime?(n)
      return [n]
    end

    answer = []

    n.downto 1 do |x|
      if is_prime?(x)
        answer << x if n % x == 0
      end
    end

    answer.reverse
  end

  def is_prime?(n)
    Prime.prime?(n)
  end

end
