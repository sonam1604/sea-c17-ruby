def old_roman_numeral number

  if number > 1000
    divisor = number / 1000
    remainder = number % 1000

      roman_1 = "L" * divisor.to_s


    if remainder > 0
      roman_2 = old_roman_numeral remainder
    end
  end

  if number > 500
    divisor = number / 500
    remainder = number % 500

    if divisor == 500
      roman_3 = "M"
    else
      roman_3 = "M" * divisor.to_s
    end

    if remainder > 0
      roman_4 = old_roman_numeral remainder
  end


  if number == 1
    puts "I"
  if number == 5
    puts "V"
  if number == 10
    puts "X"
  if number == 50
    puts "L"
  if number == 100
    puts "C"
  if number == 500
    puts "D"
  if number == 1000
    puts "M"

end

puts "Enter Number"
Number = gets.chomp
