class Employee

  attr_reader :status, :name, :id
  def initialize(name, id, status, password)
    @name = name
    @id = id
    @status = status
    @password = password
  end
end
