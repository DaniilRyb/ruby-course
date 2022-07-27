def division_1(name, age, weight)
  puts 'My name is ' + name
  puts 'My age is ' + age.to_s
  puts 'My weight is ' + weight.to_s
  puts '----------------'
end

division_1('Name1', 25, 60)
division_1('Name2', 35, 70)
division_1('Name3', 45, 80)

puts '********************'

def division_2(name, age = 20, weight)
  puts 'My name is ' + name
  puts 'My age is ' + age.to_s
  puts 'My weight is ' + weight.to_s
  puts '----------------'
end


division_2('Name1', 60)
division_2('Name2', 35, 70)
division_2('Name3', 45, 80)

puts '********************'

def division_3(name = "", age = nil, weight = 71)
  puts 'My name is ' + name
  puts 'My age is ' + age.to_s
  puts 'My weight is ' + weight.to_s
  puts '----------------'
  return 'nil'
end

# division_3 'Anton'
# division_3('Anton', 23)
puts division_3