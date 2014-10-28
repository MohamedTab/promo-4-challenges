require_relative '..lib/models/employee'

class EmployeeRepository
  attr_reader :employees
  def initialize
    @employees = [Employee.new("momo", 1, "delivry", "azerty"), Employee.new("tata", 2, "delivry", "wxcvbn"), Employee.new("popo", 3, "manager", "qsdfg")]
  end

  def add_employee(employee)
    @employees << employee
  end
end

p @employees