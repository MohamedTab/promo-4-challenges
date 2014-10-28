require_relative '..lib/views/employee_view'
require_relative '..lib/models/employee'
require_relative '..lib/repositories/employee_repository'

class EmployeeController

  attr_reader :list_employee, :check_login

  def initialize
    @employee_view = EmployeeView.new
    @repository = EmployeeRepository.new
  end

  def create_employee
    employee = Employee.new(name, id, status, password)
    @repository.add_employee(employee)
  end

  def list_employee
    employees = @repository.employees
    @employee_view.display_employee(employees)
  end

 private
  def check_login
    employees = @repository.employees
    login = @employee_view.display_login
      employees.each do |employee|
        if employee.include?(login[0]) && employee.include?(login[1])
        @employees_view.display_check_login(employee)
        else
        @employees_view.display_check_error
        end
      end
  end
end
