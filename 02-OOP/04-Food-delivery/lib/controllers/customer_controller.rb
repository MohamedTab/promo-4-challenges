require_relative '..models/customer'
require_relative '..views/customer_view'
require_relative '..repositories/customer_repository'

class CustomerController
  attr_reader :add_customer, :list_customer

  def initialize
    @customer_view = CustomerView.new
    @repository = CustomerRepository.new
  end

  def create_customer(customer)
    customer = Customer.new(name, adress, customer_id)
    @repository.add_customer(customer)
  end

  def list_customers
    @customers = @respository.customers
    @customer_view.display_customers(customers)
  end
end
