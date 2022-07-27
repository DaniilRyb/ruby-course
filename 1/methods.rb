# methods in Ruby
def division_1
  puts 'method body'
end

def division_2(name)
  puts 'My name is ' + name
end

def division_3
  name = 'Daniil'
  division_1
  division_2(name)
end

division_3

puts '-------------------'
