class Restaurant
  attr_reader :opening_hour, :closing_hour, :name
  attr_writer :name
  def initialize(opening_hour, closing_hour, name)
    @opening_hour = opening_hour
    @closing_hour = opening_hour
    @name = %w(a b c d)
  end

  def opening_hour
    if @name == "a"
      @opening_hour = 10
    elsif @name == "b"
      @opening_hour = 11
    elsif @name == "c"
      @opening_hour = 12
    elsif @name == "d"
      @opening_hour = 13
    end
  end

  def closing_hour
    if @name == "a"
      @closing_hour = 20
    elsif @name == "b"
      @closing_hour = 22
    elsif @name == "c"
      @closing_hour = 21
    elsif @name == "d"
      @closing_hour = 23
    end
  end

  def open?
    if   opening_hour < Time.now.hour < closing_hour
      return "The restaurant is open"
    else
      return "The restaurant is close"
    end
  end
end

