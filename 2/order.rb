require_relative 'item_container'

class Order
  attr_reader :items
  include ItemContainer::Manager
  include ItemContainer::Info
  def initialize
    @items = []
  end

=begin
  def delete_invalid_items
    @items.delete_if { |i| i.price.nil? || i.weight.nil? }
  end
=end

  def notification
    # send message to user
  end
end
