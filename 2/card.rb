=begin
class Card
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push item

  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each do |item|
      puts 'Item has no price' if item.price.nil?

    end
  end

  def delete_invalid_items
    @items.delete_if { |i| i.price.nil? }
  end

end
=end

require_relative 'item_container'

class Card
  attr_reader :items
  include ItemContainer::Manager

  def initialize
    @items = []
  end
end

