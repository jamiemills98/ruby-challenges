require 'test/unit'
require_relative '../16_palindrome'

class NthFibonacciTest < Test::Unit::TestCase
  def test_palindrome
    assert_equal(true, palindrome?("mom"))
    assert_equal(true, palindrome?("racecar"))
    assert_equal(false, palindrome?("good"))
  end
end