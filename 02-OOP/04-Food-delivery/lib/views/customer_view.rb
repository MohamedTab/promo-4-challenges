require_relative '..lib/controllers/customer_controller'
class CostumerView

  def display_customers(customers)
    customers.each_with_index do |customer, index|
      puts "#{index} - #{customer.name} - #{customer.adress}"
    end
  end

end