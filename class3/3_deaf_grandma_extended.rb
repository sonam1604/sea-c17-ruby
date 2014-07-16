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
  number = rand(1950)
  while number < 1930
    number = rand(1950)
  end
  if input!= "BYE"
    count = 0
    if input == input.upcase
      puts "No, NOT SINCE #{number}"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  else
    count = count + 1
    if count <= 2
      puts "No, NOT SINCE #{number}"
    end
  end
end
