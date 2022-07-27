module ItemContainer
  module  Manager
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

  module Info
    def count_valid_items
      @items.count { |i| i.calc_price }
    end
  end

end
