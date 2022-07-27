array1 = ["name1", "name2", "name3"]
array2 = %w[name1 name2 name3]

=begin

p array1[0]
p array1[1]
p array1[2]
p array1.class
p array2
=end

array1.push('name4', 'name5')
array1.pop
array1.shift
p array1