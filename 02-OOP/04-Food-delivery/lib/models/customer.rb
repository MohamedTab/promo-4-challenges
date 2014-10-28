class Customer
  attr_reader :name, :adress, :customer_id

  def initialize(name, adress, customer_id)
    @name = name
    @adress = adress
    @customer_id = customer_id
  end
end