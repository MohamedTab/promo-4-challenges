require_relative "../models/order"

class OrderRepository
  attr_reader :orders

  def initialize
    @orders = [ Order.new({"Big Mac" => 5}, 1, 0), Order.new({"Super Big Mac" => 5}, 1, 0) ]
  end

  def add_order(order)
    @orders << order
  end

  def delete_order(index)
    @orders.delete_at(index)
  end

end