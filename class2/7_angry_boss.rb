# Section 6.2 on page 32
# 4 points
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss should yell it back to you and then fire you. For
# example, if you type in I want a raise, it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts " Boss : What the hell do you want ?"
emp_response =  "I WANT " + gets.chomp
puts "Boss : WHADDAYA MEAN " + emp_response.upcase + "?!?" + "YOU\'RE FIRED"