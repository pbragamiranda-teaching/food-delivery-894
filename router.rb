# TODO: implement the router of your app.
class Router

  def initialize(meals_controller, customers_controller)
    @running = true
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    while @running
      print_menu
      input = gets.chomp.to_i
      route_menu(input)
    end
  end

  def print_menu
    puts "-------------"
    puts "---MENU------"
    puts "-------------"
    puts "1. List all the meals"
    puts "2. Add a meal"
    puts "3. List all customers"
    puts "4. Add a customer"
    puts "9. Exit"
  end

  def route_menu(input)
    case input
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then @running = false
    end
  end
end
