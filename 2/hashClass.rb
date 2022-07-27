class HashClass
  def initialize(options)# конструктор
    @price = options[:price]
    @weight = options[:weight]

  end

  attr_accessor :weight, :price

end

hash1 = HashClass.new({ weight: 120, price: 50 })
hash2 = HashClass.new({ weight: 220, price: 75 })

p hash1
p hash2

p hash1.weight
p hash1.price

p hash2.weight
p hash2.price
