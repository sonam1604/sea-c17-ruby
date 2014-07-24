#puts Dir['*.{JPG,jpg}']
puts Dir['*.{JPG,jpg}']
pic_names = Dir['*.{JPG,jpg}']
#puts Dir['**/*.{JPG,jpg}']
puts 'Name:'
name = gets.chomp
puts
print "Downloading #{pic_names.length} files"
pic_number = 1
pic_names.each do |pic|
  print "."
  new_name = if pic_number < 10
    "#{name}0#{pic_number}.jpg"
  else
    "#{name}#{pic_number}.jpg"
  end
  File.rename pic, new_name
  pic_number = pic_number + 1
end
puts #
puts "Done"
puts Dir['*.{JPG,jpg}']


