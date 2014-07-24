#!/usr/bin/env ruby
require "fileutils"
source = Dir['class5/source/**/*.{JPG,jpg}']

puts source
source.each do |s|
  #File.basename("class5/code.rb", ".rb")   #=> "code"

  i= File.size?(s).to_s
  j= File.basename(s,".jpg")
  File.rename()
  puts
  puts
  puts
  puts new_name
  )
FileUtila.copy_file['../']

end
