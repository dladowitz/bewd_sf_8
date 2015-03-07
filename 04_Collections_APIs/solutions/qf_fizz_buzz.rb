# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here

# Here is the simplest way to check this - three modulo operations
def fizzbuzz(number)
  if number % 15 == 0
    'FizzBuzz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 3 == 0
    'Fizz'
  else
    number
  end
end

# Here is another way - this is the fastest of the three methods, because
# it only does modulos once, and doesn't do string concatenation.
# This would be the "best way" we have listed
def fizzbuzz2(number)
  multiple_3 = number % 3 == 0
  multiple_5 = number % 5 == 0

  if multiple_3 && multiple_5
    'FizzBuzz'
  elsif multiple_5
    'Buzz'
  elsif multiple_3
    'Fizz'
  else
    number
  end
end

# This is also an acceptable solution, but it's slower because
# it's doing string concatentation
def fizzbuzz3(number)
  output = ''

  if number % 3 == 0
    output << 'Fizz'
  end

  if number % 5 == 0
    output << 'Buzz'
  end

  if output.empty?
    number
  else
    output
  end
end

# =============================================================================
# DO NOT EDIT BELOW THIS LINE!
# =============================================================================

# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected.nil? and 'nil' or expected} to match #{actual}" unless expected == actual
end

# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# Output!
1.upto(100) do |number|
  puts fizzbuzz(number)
end
