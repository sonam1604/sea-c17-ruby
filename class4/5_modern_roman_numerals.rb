#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer bewteen 1 and
# 3000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   modern_roman_numeral(9)
#
# should return
#
#   "IX"
#
# Hint: Run the program from the shell like this:
#
#   $ ruby 5_modern_roman_numerals.rb 9
#   IX

def modern_roman_numeral(number)
  if number >= 1000
    i = 1000
    roman_no = calculate(number,i)

  elsif number >= 900
    i = 900
    roman_no = calculate(number,i)

  elsif number >= 500
    i = 500
    roman_no = calculate(number,i)

  elsif number >= 400 && number < 500
    i = 400
    roman_no = calculate(number,i)

  elsif number >= 100 && number < 400
    i = 100
    roman_no = calculate(number,i)

  elsif number >= 90
    i = 90
    roman_no = calculate(number,i)

  elsif number >= 50 && number < 90
    i = 50
    roman_no = calculate(number,i)

  elsif number >= 40
    i = 40
    roman_no = calculate(number,i)

  elsif number >= 10 && number < 40
    i = 10
    roman_no = calculate(number,i)

  elsif number == 9
    i = 9
    roman_no = calculate(number,i)

  elsif number >= 5 && number < 9
    i = 5
    roman_no = calculate(number,i)

  elsif number == 4
    i = 4
    roman_no = calculate(number,i)

  else number >= 1 && number < 4
    i = 1
    roman_no = calculate(number,i)
  end

  roman_no
end

def calculate(num, divisor)
  quotient = num / divisor
  remainder = num % divisor

  if divisor == 1000
    roman_1 = "M" * quotient

  elsif divisor == 900
    roman_1 = "CM"

  elsif divisor == 500
    roman_1 = "D"

  elsif divisor == 400
    roman_1 = "CD"

  elsif divisor == 100
    roman_1 = "C" * quotient

  elsif divisor == 90
    roman_1 = "XC"

  elsif divisor == 50
    roman_1 = "L"

  elsif divisor == 40
    roman_1 = "XL"

  elsif divisor == 10
    roman_1 = "X" * quotient

  elsif divisor == 9
    roman_1 = "IX"

  elsif divisor == 5
    roman_1 = "V" * quotient

  elsif divisor == 4
    roman_1 = "IV"

  else divisor == 1
    roman_1 = "I" * quotient
  end

  if remainder > 0
    roman_2 = modern_roman_numeral(remainder)
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

puts modern_roman_numeral(input)
