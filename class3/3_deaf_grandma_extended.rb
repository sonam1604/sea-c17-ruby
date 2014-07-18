# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

count = 0

while count < 3
  input = gets.chomp
<<<<<<< HEAD
  number = rand(1950)
  while number < 1930
    number = rand(1950)
  end
  if input!= "BYE"
    count = 0
=======
  number = rand(21) + 1930

  if input != "BYE"
    count = 0

>>>>>>> ebbe16b22058e759795e8d139d9e02c23bd7668e
    if input == input.upcase
      puts "NO, NOT SINCE #{number}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  else
    count = count + 1

    if count <= 2
      puts "NO, NOT SINCE #{number}!"
    end
  end
end
