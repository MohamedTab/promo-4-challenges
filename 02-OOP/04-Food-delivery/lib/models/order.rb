class Order
  attr_accessor :customer_id, :employee_id, :meals

  def initialize(meals, customer_id, employee_id)
    @customer_id = customer_id
    @employee_id = employee_id
    @meals = meals
  end
end