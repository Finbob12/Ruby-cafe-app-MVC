class CafeView
    def initialize(cafe)
        @cafe = cafe
    end

    def welcome
        puts "Welcome to #{@cafe.name}!"
    end

    def print_menu
        puts
        puts "Menu"
        puts "------"
        @cafe.menu.get_items.each {|item| puts item}
        return nil
    end

    def place_order
        puts "What would you like to order? When you are finished, type 'done'."
        return gets.strip.downcase
    end

    def invalid_input
        puts "--------"
        puts
        puts "The item you have selected is not on the menu. Please choose again, or enter 'done' if you are finished."
    end

    def get_quantity
        puts "How many would you like?"
        return gets.to_i
    end

    def order_summary
        order_items = @cafe.get_order.items
        puts
        if order_items.length > 0
            puts "Thank you! Here is you order:"
            puts "-----------------------------"
            order_items.each do |item_name, quantity|
                puts "#{quantity} #{item_name}"
            end
        else
            puts "Your order is empty. Thank you for coming!"
        end
        puts
    end

    def print_order
        order = @cafe.get_order
        if order
            order_summary
            puts "Total:     $%.2f" % @cafe.order_total
        else
            puts "Thank you for coming!"
        end
        puts
    end
end