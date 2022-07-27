if 2 > 1
  puts "yes"
else
  puts "false"
end

puts "yes1" unless 2 < 1
puts "yes2" if 2 < 1

name = "Masha"

if name == "Dasha"
  puts "Dasha"
elsif name == "Pasha"
  puts "My name is " + name
elsif name == "Masha"
  puts "1) My name is " + name
end

if name == 'Masha' && 1 < 2
  puts '2) My name is ' + name
end

if name == "Masha" || 1 < 2 && name != 'Dasha'
  puts "3) My name is " + name
end