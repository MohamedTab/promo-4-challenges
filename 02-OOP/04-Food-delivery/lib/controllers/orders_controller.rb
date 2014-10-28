require_relative '../views/orders_view'
require_relative '../repositories/orders_repository'

class OrdersController

  def initialize
    @orders_view = OrdersView.new
    @repository = OrderRepository.new
  end

  def create_order
    order = @orders_view.description_add_order
    order = Order.new(order[0], order[1], order[2])
    @repository.add_order(order)
  end

  def remove_order
   @repository.delete_order(index)
  end

  def list_order
    customer_id = @orders_view.ask_for_customer_id.to_i
    orders = @repository.orders.select { |order| order.customer_id == customer_id }
    @orders_view.orders_display(orders)
  end
end

c = OrdersController.new
c.create_order
c.list_order