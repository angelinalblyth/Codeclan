require('minitest/autorun')
require('minitest/rg')

require_relative('../fizzbuzz.rb')

class FizzbuzzTest < MiniTest::Test

  def test_fizz_buzz_3_returns_fizz
    assert_equal("Fizz", fizz_buzz(3))
  end

  def test_fizz_buzz_5_returns_fizz
    assert_equal("Buzz", fizz_buzz(5))
  end

  def test_fizz_buzz_6_returns_fizz
    assert_equal("Fizz", fizz_buzz(6))
  end

  def test_fizz_buzz_15_returns_fizz
    assert_equal("Fizzbuzz", fizz_buzz(15))
  end

  def test_return_number_as_string
    assert_equal("2", fizz_buzz(2))
  end

  def test_invalid_input
    assert_equal("Thats not a number", fizz_buzz("three"))
  end

  # def test_fizz_buzz_0test_return_number_as_string
  #   assert_equal("0", fizz_buzz(0))
  # end

end
