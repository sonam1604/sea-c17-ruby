require 'yaml'

name = ARGV[0]
year = ARGV[1].to_i
month = ARGV[2].to_i
day = ARGV[3].to_i

if name.nil? || year == 0 || month == 0 || day == 0
  puts "Usage: 4_birthday_helper_write.rb NAME YEAR MONTH DAY"
  exit
end

# your code here
file_path = "sea-c17-ruby/"
hash_table = {}
#puts hash_table [name] = Time.new(year,month,day).utc
newname =name.capitalize
birth_date = Time.new(year,month,day).utc
wstring = YAML.dump({newname => birth_date})
puts wstring

File.open(file_path, "w") do |file|
 file.write (wstring[1])
  puts "Birthday #{birth_date} saved for #{name.capitalize}"
end
