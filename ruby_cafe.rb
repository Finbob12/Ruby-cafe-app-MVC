require_relative './models/cafe'
require_relative './views/cafe_view'
require_relative './controllers/cafe_controller'

menu = {"latte" => 4.00, "tea" => 3.00, "scone" => 5.00}
cafe_model = Cafe.new("Coder Cafe", menu)
cafe_view = CafeView.new(cafe_model)
cafe_controller = CafeController.new(cafe_model, cafe_view)
cafe_controller.run