array1 = %w[Name1 Name2 Name3]
# array2 = ["Name1",  "Name2", "Name3"]

# array1.each { |name| puts name }
hash = { name: 'name1', age: 21, height: 175 }

# 5.times {puts 'Hello Ruby'} # 5 раз выводит строку 'Hello Ruby'
puts "----------------------"
hash.each_key { |i| puts i }
puts "----------------------"
array1.each_with_index { |value, index| puts value.to_s + " " + index.to_s }

File.open("blocks.txt", "w") { |y| y.puts "hello, Ruby" }

=begin
array1.each do |name|
  if name == 'Name1'
    array1.push 'name4'
  end
  puts name
=end
