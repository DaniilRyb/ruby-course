def func1(name='', age = nil, weight = 71)
  var = 'Hello '
  if name != 'Dasha' && age == nil
    var += 'World'
  end
  var
  # return 'nil'
end

def func2(name='', age = nil, weight = 71)
  if name != 'Dasha' && age == nil
    var = 'Hello '
    var += 'World'
  end
  var
  # return 'nil'
end


puts func1('Masha')
puts func2('Dasha', 25)
puts func2('Dasha', 35, 70)
