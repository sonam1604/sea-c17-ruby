#!/usr/bin/env ruby
#
# 4 points
#
# Write the following method:
#
#   grandfather_clock(&block)
#
#     Accepts a block and calls it once for each hour that's passed today.
#
#     grandfather_clock do
#       puts "DONG!"
#     end
#
#     Output:
#
#     The hour is 2
#     DONG!
#     DONG!
#
# Hint: Use Time.new.hour to get the current hour. However, this returns an
# Integer between 0 and 23. You'll have to alter the return value to ensure
# the program uses a number that appears on a clock-face. (i.e. 1 to 12)

# your code here
def grandfather_clock(&block)
  current_time = Time.new.hour
  if current_time == 0
    current_time = 12
  end
  if current_time >= 13 && current_time <=23
    current_time -= 12
  end
  puts "The hour is #{current_time}"
  current_time.times do
    block.call
  end
end
#end of code

grandfather_clock do
  puts "DONG!"
end
