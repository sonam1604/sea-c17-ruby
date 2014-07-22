#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction "IX" nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written "VIIII" and so on.
#
# Write a method that, when passed any integer between 1 and 3000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   old_roman_numeral(9)
#
# should return
#
#   "VIIII"
#
# Make sure to test your method on a bunch of different numbers like 1999.
#
# Hint 1: Use the integer division and modulus methods on page 32.
#
# Hint 2: Here's a mapping of Roman to Arabic numerals:
#
#   I = 1
#   V = 5
#   X = 10
#   L = 50
#   C = 100
#   D = 500
#   M = 1000
#
# Hint 3: Run the program from the shell like this:
#
#   $ ruby 4_old_school_roman_numerals.rb 9
#   VIIII

def old_school_roman_numeral(number)
  # your solution here

  if number >= 1000
      i = 1000
      roman_no = calculate(number,i)

  elsif number >= 500
      i = 500
      roman_no = calculate(number,i)

  elsif number >= 100
      i = 100
      roman_no = calculate(number,i)

  elsif number >= 50
      i = 50
      roman_no = calculate(number,i)

  elsif number >= 10
      i = 10
      roman_no = calculate(number,i)

  elsif number >= 5
      i = 5
      roman_no = calculate(number,i)

  else number >= 1
      i = 1
      roman_no = calculate(number,i)
  end

  roman_no

end

def calculate num,divisor

  quotient = num / divisor
  remainder = num % divisor

  if divisor == 1000
      roman_1 = "M" * quotient

  elsif divisor == 500
      roman_1 = "D" * quotient

  elsif divisor == 100
      roman_1 = "C" * quotient

  elsif divisor == 50
      roman_1 = "L" * quotient

  elsif divisor == 10
      roman_1 = "X" * quotient

  elsif divisor == 5
      roman_1 = "V" * quotient

  else divisor== 1
      roman_1 = "I" * quotient

  end

      if remainder > 0
          roman_2 = old_school_roman_numeral(remainder)
      else
          roman_2 = ""
      end

  answer = roman_1 +roman_2

  answer

end

  input = ARGV[0].to_i

  if input <= 0 || input > 3000
    puts "Usage: 4_old_school_roman_numerals [1-3000]"
    exit
end

  puts old_school_roman_numeral(input)
