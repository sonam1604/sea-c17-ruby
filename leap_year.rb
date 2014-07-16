# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!
puts "Starting Year:"
start=gets.chomp.to_i
puts "Ending Year:"
stop= gets.chomp.to_i
puts "Leap Years:"
while start!=stop + 1
	if start % 4 == 0 || (start % 100 == 0 && start % 400 == 0)
		puts start
	else
    end     
 start=start+1
end