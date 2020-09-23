require_relative './menu'
require_relative './order'

class Cafe
    attr_reader :name, :menu
    def initialize(name, menu_items)
        @name = name
        @menu = Menu.new
        @order = Order.new
        populate_menu(menu_items)
    end

    def populate_menu(menu_items)
        menu_items.each do |name, price|
            @menu.add_item(name, price)
        end
    end

    def add_to_order(item, quantity)
        @order.add(item, quantity)
    end

    def get_order
        return @order
    end

    def validate_item(item_name)
        @menu.validate_item(item_name)
    end

    def order_total
        total = 0
        @order.items.each do |item,quantity|
            total += @menu.get_price(item) * quantity
        end
        return total
    end
end