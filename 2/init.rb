=begin
require_relative 'card'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
=end

# Dir["*.rb"].each { |file| require_relative file }
#
require_relative 'item'
require_relative 'card'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'order'

=begin
card = Card.new
card.add_item(Item.new({ price: 200 })) # добавляем условный объект item в массив классов
card.add_item(Item.new)
card.validate
card.remove_item
p card
=end

=begin
item1 = Item.new({ price: 25, weight: 120, name: 'Car1' })
item2 = Item.new({ price: 35, weight: 220, name: 'Car2' })

item1.info { |value| puts value }
item2.info
=end

item1 = Item.new({ weight: 1200, name: 'BMW' })
item2 = Item.new({ price: 35, name: 'Mercedes' })
item3 = Item.new({ price: 35, weight: 2200, name: 'Volvo' })
=begin
item4 = VirtualItem.new({ price: 35, weight: 2200, name: 'Volvo' })
item5 = RealItem.new({ weight: 2200, name: 'Volvo' })
=end
item4 = VirtualItem.new({ price: 25.0, weight: 120, name: 'Volvo' })
item5 = RealItem.new({ weight: 120, name: 'MAN' })
item6 = RealItem.new({ weight: 120, name: 'Bike' })

card = Card.new
=begin
card.add_item item1
card.add_item item2
card.add_item item3
=end
card.add_item item4
card.add_item item5
card.remove_item

# p card
# card.delete_invalid_items

# p item4.respond_to? :weight
# p item5.respond_to? :weight

=begin
virtual = VirtualItem.new
p virtual
=end

# p Item.discount
p item4.calc_price
p item4.real_price

p card.items.size
# p card.items

order = Order.new
order.add_item item4
order.add_item item5
order.add_item item6
order.remove_item
p order.items.size
p order.count_valid_items
# p order.items

