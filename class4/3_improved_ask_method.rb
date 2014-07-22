#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# That ask method I showed you on page 66 was OK, but I bet you could do better.
# Try to clean it up by removing the answer variable. You’ll have to use return
# to exit from the loop. (Well, it will get you out of the whole method, but it
# will get you out of the loop in the process.)
#
# Hint: I've already structured your program. Aren't you lucky? :)

def ask(question)
  # your solution here
  while true

      puts question
      reply = gets.chomp.downcase

      if reply == "yes"
        return true
      end

      if reply == "no"
        return false
      end

      puts 'Please answer "yes" or "no" '
  end
end

  puts ask('Do you like eating tacos?')
  puts ask('Do you like eating burritos?')
  puts ask('Do you wet the bed?')
  puts ask('Do you like eating chimichangas?')
  puts ask('Do you like eating sopapillas?')
  puts ask('Do you like drinking horchata?')
  puts ask('Do you like eating flautas?')
