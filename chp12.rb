require 'yaml'
name = ARGV.first
hash_table = {}
if name.nil?
  puts "Usage: 3_birthday_helper_read.rb NAME"
  exit
end

count = 0
read_string = File.read('class6/birth_dates.yml')
hash_table =  YAML.load(read_string)


hash_table.each do |input ,date|

  count = count + 1
  if name.capitalize == input
    month = date.month
    current_time = Time.new.utc
    current_month = Time.new.utc.month
     if (Time.new.utc.month >= date.month)
      year = (current_time.year + 1)
    else
      year = current_time.year
    end
    puts year
    age =  year - date.year
    birth_date = Time.new(year, date.month, date.day).utc
    birth_date = birth_date.strftime("%F")
    puts "#{name.capitalize} will be #{age} on #{birth_date}"
    exit
  end
  puts "#{name} no known birth date"  if count == hash_table.length()
end


