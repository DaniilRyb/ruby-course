=begin
class Item
  name = 'Dasha'

  def price
    return rand 100
  end
end
=end

=begin
# item1 экземпляр класса Item
item1 = Item.new
item2 = Item.new
item3 = Item.new

puts item1
# оператор p
p item2
p item3
=end

=begin
class Item # имя класса - это имя файла с большой буквы

  def initialize # конструктор
    @price = 30
  end

  def price
    @price
  end

  def price=(value)
    @price = value
  end

end
=end

=begin
class Item # имя класса - это имя файла с большой буквы

  def initialize # конструктор
    @price = 33242340
    @height = 30
  end

  attr_reader :price, :height # getter'ы
  attr_writer :price          # setter'ы

end
=end

=begin
class Item # имя класса - это имя файла с большой буквы

  def initialize # конструктор
    @price = 300
    @height = 400
  end


  attr_reader :price, :height # getter'ы
  attr_writer :price, :height # setter'ы


  # тоже самое
  attr_accessor :price, :height

end

item1 = Item.new
item2 = Item.new
item3 = Item.new

item1.price = 101
item1.height = 102

item2.price = 201
item2.height = 202

p item1
p item2
p item3
=end

class Item
  attr_reader :real_price, :name
  attr_writer :price

  @@discount = 0.1

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield name
    else
      puts 'Nothing to show'
    end
  end

  def self.discount
    if Time.now.month == 7
      @@discount += 0.3
    else
      @@discount
    end
  end

  def calc_price
    if
      # "Your price is " + (@price - @price * self.class.discount).to_s
    (@real_price - @real_price * self.class.discount) + tax
    end
  end

  private

  def tax
    type_tex = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price * 0.2
               else
                 @real_price * 0.1
               end
    cost_tax + type_tex
  end

=begin
  def check_price
    @price unless @params.nil?
  end
=end

end
