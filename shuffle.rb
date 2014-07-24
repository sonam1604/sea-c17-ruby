def shuffle(songs_list)
  length = songs_list.length
  puts length
  shuffle_name = []
  i = 0
  j = 0
  while j < length

    i = rand(16)
    if songs_list[i]!= 'used'

      shuffle_name.push (songs_list[i])
      songs_list[i] = 'used'
      j = j + 1
    end
  end
  puts (songs_list.length == shuffle_name.length)
shuffle_name

end

songs_name = Dir["../**/*.{mp3,m4a}"]
puts songs_name
puts
puts
puts
puts
filename ='playlist2.m3u'
File.open filename, 'w' do|file|
  shuffle(songs_name).each do|shuf_list|
     file.write shuf_list
  end
end

#puts shuffle_list
