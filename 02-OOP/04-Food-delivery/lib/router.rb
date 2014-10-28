require_relative 'employee_controller'
require_relative 'customer_controller'
require_relative 'orders_controller'
require_relative 'restaurant_controller'

class Router
  def initialize(employee_controller, customer_controller, orders_controller, restaurant_controller)
    @employee_controller = employee_controller
    @customer_controller = customer_controller
    @orders_controller = orders_controller
    @restaurant_controller = restaurant_controller
    @running = true
  end


  def run
    puts "welcome to #{@restaurant_controller.begin}"
    puts "           --           "
    login
    @employee_controller.check_login
     # @employee_controller.check_login.each do |employee|
     #    if employee.include?(username && password)
     #  puts "Welcome, #{username}.  Your access level is :#{employee_controller.check_login.status}"
    @running
    else
    puts "Error"
    @running = false
    end
      if employee_controller.check_login.status == "manager"
      display_options_manager
      else
      display_options_delivry
      end
    action = gets.chomp.to_i
    print `clear`
    route_action_manager(action)
    end
  end

  def stop
    @running = false
  end

  private



  def route_action_manager(action)
    case action
    when 1 then @customer_controller.list_costumers
    when 2 then @customer_controller.create_customer
    when 3 then @orders_controller.list_order
    when 4 then @orders_controller.create_order
    when 5 then @orders_controller.remove_order
    when 6 then @employee_controller.list_employee
    when 7 then stop
    else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

    def route_action_delivery(action)
    case action
    when 1 then @customer_controller.list_costumers
    when 2 then @customer_controller.create_customer
    when 3 then @orders_controller.list_order
    when 4 then @orders_controller.create_order
    when 5 then @orders_controller.remove_order
    when 6 then @employee_controller.list_employee
    when 7 then stop
    else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

  def display_options_manager
    puts "What would you like to do?"
    puts "Options :"
    puts "1 - List customers"
    puts "2 - Add customer"
    puts "3 - view orders"
    puts "4 - Add order"
    puts "5 - Remove order"
    puts "6 - List employees"
    puts "7 - Log out"
  end

  def display_options_delivry
    puts "What would you like to do?"
    puts "Options :"
    puts "1 - view orders"
    puts "2 - Add order"
    puts "3 - Log out"
  end
end