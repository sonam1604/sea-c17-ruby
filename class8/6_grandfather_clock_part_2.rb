#!/usr/bin/env ruby
#
# 4 points
#
# Modify the previous method with the following change:
#
#   grandfather_clock(str, &block)
#
#     Accepts a String and a block. Calls the block, passing in the string,
#     once for each hour that's passed today.
#
#     grandfather_clock("GONGGGGGGG!") do |sound|
#       puts sound
#     end
#
#     Output:
#
#     The hour is 2
#     GONGGGGGGG!
#     GONGGGGGGG!

# your code here
def grandfather_clock(str,&block)
  current_time = Time.new.hour
  if current_time == 0
    current_time = 12
  end
  if current_time >= 13 && current_time <=23
    current_time -= 12
  end
  puts "The hour is #{current_time}"
  current_time.times do
    block.call(str)
  end
end
#end of code

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end
