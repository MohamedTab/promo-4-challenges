class OrdersView

  def description_add_order
    order = []
    puts "choose your meal"
    print "> "
    order[0] = gets.chomp
    puts "customer_id?"
    print "> "
    order[1] = gets.chomp
    puts "employee_id"
    print "> "
    order[2] = gets.chomp
    return order
  end

  def ask_for_customer_id
    puts "customer_id?"
    customer_id = gets.chomp
  end

  def orders_display(orders)
    orders.each_with_index do |order, index|
      puts "#{order.meals} - #{order.customer_id} - #{order.employee_id}"
    end
  end

end
