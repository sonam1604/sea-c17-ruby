# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts 'Enter your First Name :'
FirstName = gets.chomp
puts ' Enter Your Middle Name :'
MiddleName = gets.chomp
puts 'Enter your Last Name :'
LastName = gets.chomp
puts 'Hello ' + FirstName + ' ' + MiddleName + ' ' +LastName
