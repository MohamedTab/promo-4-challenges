class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :height, :age, :fruits, :pick_a_fruit, :dead, :pick_a_fruit
  def initialize
    @height = 0
    @age = 0
    @pick_a_fruit = 0
    @fruits = 0
    @dead = false
    @probability = []
  end

  def fruitsperyear
    if @age <= 5
      @fruits = 0
    elsif @age > 5 && @age <= 10
      @fruits = 100
    elsif @age > 10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end

  def dead?
    if @age <= 50
      @dead = false
    elsif @age > 50 && @age < 100
      (100 - @age).times do |b|
        @probability << [true, false].sample
      end
        if @probability.all? { |a| a == true }
          @dead = true
        else
          @dead = true
        end
    else
      @dead = true
    end
  end

  def one_year_passes!
    if @age <= 10
      @age += 1
      @height += 1
      fruitsperyear
    else
      @age += 1
      @height = 10
      fruitsperyear
    end
  end
end
