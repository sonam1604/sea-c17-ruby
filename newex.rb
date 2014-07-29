
def arabic_number(num)
  # your code here
hash_table = {}
count =0
result = 0
  {"M"=>1000,"CM"=>900,"D"=>500,"CD"=>400,"C"=>100,"XC"=>90,"L"=>50,
   "XL"=>40,"X"=>10,"IX"=>9,"V"=>5,"IV"=>4,"I"=>1}.each do |key, value|
    hash_table[key] = value
end

hash_table.each do |key, value|

  if count != (num.length)
    num1 = num[count..num.length].cut(key)

    if num1 != ""
      length = num1.length
      count =count + (num1.length)

      if num1 == "CM" || num1 == "CD" || num1 == "XC" || num1 == "XL" ||
        num1 == "IX" || num1 == "IV"
        result += value
      else
        result += (value * length)
      end

    end
  end
  end
result
end
class String
  def cut(str)
    slice(/^(#{str})*/)
  end
end

input = ARGV.first


if input.nil?
puts "Usage: 5_arabic_numbers.rb ROMAN NUMERAL"
exit
end



if arabic_number(input.upcase) == 0
  puts "Invalid roman numeral '#{input}'"
else
  puts arabic_number(input.upcase)
end




