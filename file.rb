require 'yaml'
filename = 'ex.txt'
test_array = ["HI", "You are Sweet" , "adorable", ["kind", "sweet"],42]
test_string = test_array.to_yaml
File.open filename, 'w' do |file|
  file.write test_string
end

read_string = File.read filename
read_array =YAML::load read_string
puts read_string
puts read_array
puts (read_string == test_string)
puts (read_array == test_array)

