require "minitest/autorun"
require "./prime_factor"

class TestPrimeFactor < Minitest::Test
  def setup
    @prime_factor = PrimeFactor.new
  end

  def test_prime_factor_is
    assert_equal @prime_factor.is_a?(PrimeFactor), true
  end

  def test_one
    assert_equal [], @prime_factor.factors(1)
  end

  def test_two
    assert_equal [2] , @prime_factor.factors(2)
  end

  def test_three
    assert_equal [3], @prime_factor.factors(3)
  end

  def test_four
    assert_equal [2], @prime_factor.factors(4)
  end

  def test_five
    assert_equal [5], @prime_factor.factors(5)
  end

  def test_six
    assert_equal [2, 3], @prime_factor.factors(6)
  end

  def test_is_prime
    assert_equal true, @prime_factor.is_prime?(7)
  end

  def test_twelve
    assert_equal [2, 3], @prime_factor.factors(12)
  end

  def test_thirteen
    assert_equal [13], @prime_factor.factors(13)
  end

  def test_fourteen
    assert_equal [2, 7], @prime_factor.factors(14)
  end

  def test_one_hundred
    assert_equal [2, 5], @prime_factor.factors(100)
  end

  def test_99
    assert_equal [3, 11], @prime_factor.factors(99)
  end

  def test_3779_times_11
    assert_equal [11, 3779], @prime_factor.factors(3779 * 11)
  end
end
