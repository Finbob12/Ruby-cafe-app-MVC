class CafeController
    def initialize(cafe_model, cafe_view)
        @cafe_model = cafe_model
        @cafe_view = cafe_view
    end

    def run
        @cafe_view.welcome

        loop do
            @cafe_view.print_menu
            input = @cafe_view.place_order
            if (input == 'done')
                break
            end
        
            item = @cafe_model.validate_item(input)
            if (item)
                quantity = @cafe_view.get_quantity
                if (quantity > 0)
                    @cafe_model.add_to_order(item, quantity)
                end
            else
                @cafe_view.invalid_input
            end
        end
        @cafe_view.print_order
    end
end