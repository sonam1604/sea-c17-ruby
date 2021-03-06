#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that reads in names and birth dates from birth_dates.yml.
# Given a name, it should output when that person's next birthday will be and
# how old they will be.
#
# For example:
#
#   $ 3_birthday_helper_read.rb Alex
#   Alex will be 78 on 2014-10-04
#
# The program should also handle names that are not capitalized:
#
#   $ ruby 3_birthday_helper_read.rb jane
#   Jane will be 56 on 2015-03-27
#
# And reject names that don't have a birth date:
#
#   $ ruby 3_birthday_helper_read.rb Andre3000
#   Unknown birth date for 'Andre3000'
#
# Hint: Represent a birth date as a Time on midnight in UTC.
#
# A few methods that may help you:
#
#   File.read(file_path) → String
#
#     Opens the file_path and returns the contents as a String.
#
#     File.read("file.txt")  #=> "Hello world!"
#
#   YAML.load(str) → Object
#
#     Parses a YAML formatted string and returns the resulting Object.
#
#     YAML.load("--- foo")          #=> "foo"
#     YAML.load("---\nfoo: bar\n")  #=> { "foo" => "bar" }
#
#   Time#strftime("%F") → String
#
#     Returns a Time as a String in YYYY-MM-DD format
#
#     Time.new.utc.strftime("%F")   #=> "2014-07-23"

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
    birth_date = Time.utc(year, date.month, date.day)
    birth_date = birth_date.strftime("%F")
    puts "#{newname} will be #{age} on #{birth_date}"
    exit
  end

puts "Unknown birth date for '#{newname}'" if count == hash_table.length()
end




# your code here

