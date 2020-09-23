class Order
    def initialize
        @order_items = Hash.new(0)
    end

    def add(name, quantity)
        @order_items[name] += quantity
    end

    def items
        return @order_items
    end
end