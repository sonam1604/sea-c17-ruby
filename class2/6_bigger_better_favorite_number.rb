# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

puts 'Enter your Favorite Number : '
fav_number = gets.to_i
fav_number = fav_number + 1
puts 'A bigger and better favorite number would be :'  + fav_number.to_s
