time = Time.new(1985, 04, 16, 8, 45, 0, "-07:00")
puts "I was born on #{time}"
new_time = time + 1000000000
puts "And I turn one billion seconds old on #{new_time}"


year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i

if year == 0 || month == 0 || day == 0
  puts "Usage: 2_happy_birthday.rb YEAR MONTH DAY"
  exit
end

# your code here

birth_time = Time.utc(year, month, day)
puts "The birth date is #{birth_time}"
t = Time.new
current_time = t.utc

if current_time.month > birth_time.month
  count = current_time.year - birth_time.year
  count.times {puts "CHEER"}
else
  count = (current_time.year - 1) - birth_time.year
  count.times {puts "CHEER"}
end



require 'yaml'

name = ARGV.first

if name.nil?
  puts "Usage: 3_birthday_helper_read.rb NAME"
  exit
end

hash_table = {}
count = 0

read_string = File.read('class6/birth_dates.yml')
hash_table =  YAML.load(read_string)
newname = name.capitalize

hash_table.each do |key ,date|

  count = count + 1
  if newname == key
    month = date.month
    #current_time = Time.new.utc
    #current_month = Time.new.utc.month
     if (Time.new.utc.month >= date.month)
      year = (Time.new.utc.year + 1)
    else
      year = Time.new.utc.year
    end

    age =  year - date.year
    birth_date = Time.new(year, date.month, date.day).utc
    birth_date = birth_date.strftime("%F")
    puts "#{newname} will be #{age} on #{birth_date}"
    exit
  end

puts "Unknown birth date for '#{newname}'" if count == hash_table.length()
end



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
file_path = "class6/birth_dates.yml"
hash_table = {}
#puts hash_table [name] = Time.new(year,month,day).utc
newname =name.capitalize
birth_date = Time.new(year,month,day).utc
wstring = YAML.dump({newname => birth_date})
puts wstring

File.open(file_path, "w") do |file|
  file.write (wstring)
  puts "Birthday #{birth_date} ssaved for #{name.capitalize}"
end
