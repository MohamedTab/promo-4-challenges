require_relative "../models/customer"
class CustomerRepository

  attr_reader :customers

  def initialize
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end


end