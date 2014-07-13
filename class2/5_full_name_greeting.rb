# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts "Enter First Name: "
first_name = gets.chomp
puts "Enter Middle Name: "
middle_name = gets.chomp
puts "Enter Last Name: "
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name
