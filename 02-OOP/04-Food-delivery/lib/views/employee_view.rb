# require_relative '..lib/controllers/employee_controller'
class EmployeeView

  attr_reader :display_employee, :display_login, :display_check_login, :display_check_error

  def display_employee(employees)
    employees.each_with_index do |employee|
    puts "#{employee.name} - #{employee.id} - #{employee.status}"
    end
  end

private

  def display_login
    login = []
    puts "Please enter your username"
    login[0] = gets.chomp
    puts "Please enter your password"
    login[1] = gets.chomp
    return login
  end

  def display_ckeck_login(employee)
      puts "Welcome, #{employee.name}.  Your access level is :#{employee.status}"
  end

  def display_check_error
    puts "error"
  end
end


p a.display_login