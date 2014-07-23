
def old_school_roman_numeral number

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
