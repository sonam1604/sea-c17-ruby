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

        if reply == "yes" || reply == "no"
          return true
        else
          return false
        end
       'Please answer "yes" or "no" '
    reply

  end

end

  ask('Do you like eating tacos?')
  puts ask('Do you like eating burritos?')
  answer = puts ask('Do you wet the bed?')
  puts ask('Do you like eating chimichangas?')
  puts ask('Do you like eating sopapillas?')
  puts "Just a few more questions..."
  puts ask('Do you like drinking horchata?')
  puts ask('Do you like eating flautas?')
  puts
  puts "DEBRIEFING:"
  puts "Thank you for taking the time to help with this experiment."
  puts "In fact, this experiment has nothing to do with Mexican food."
  puts "It is an experiment about bed-wetting. The Mexican food was just"
  puts "there to catch you off guard in the hopes that you would answer"
  puts "more honestly. Thanks again."
  puts ""
  puts ""

  if answer == "yes"
    puts "true"
  else
    puts "false"
  end

