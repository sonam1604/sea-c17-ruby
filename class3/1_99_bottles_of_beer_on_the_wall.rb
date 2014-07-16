# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."

number = 99

while number != 0
	puts "#{number} bottles of beer on wall, #{number} bottles of beer."
	number = number - 1
	puts "Take one down and pass it around, #{number} bottles of beer on wall."
  puts ""
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
