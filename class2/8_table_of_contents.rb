# Section 6.2 on page 32
# 4 points
# Here’s something for you to do in order to play around more with center,
# ljust, and rjust: write a program that will display a table of contents so
# that it looks like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

line_width = 50
puts ('Table of Contents'.center(line_width))
puts ('Chapter 1:'.ljust(line_width) ) + ('Getting Started'.ljust(line_width)) + ('Page 1'.ljust(line_width))
puts ('Chapter 2:'.ljust(line_width) ) + ('Numbers'.ljust(line_width)) + ('Page 9'.ljust(line_width))
puts ('Chapter 3:'.ljust(line_width) ) + ('Letters'.ljust(line_width)) + ('Page 13'.ljust(line_width))

# Another way not sure if this is how the output was expected or teh abov format  
puts ('Table of Contents'.center(line_width))
puts ('Chapter 1:'.ljust(line_width) ) + ('Getting Started'.center(line_width)) + ('Page 1'.rjust(line_width))
puts ('Chapter 2:'.ljust(line_width) ) + ('Numbers'.center(line_width)) + ('Page 9'.rjust(line_width))
puts ('Chapter 3:'.ljust(line_width) ) + ('Letters'.center(line_width)) + ('Page 13'.rjust(line_width))