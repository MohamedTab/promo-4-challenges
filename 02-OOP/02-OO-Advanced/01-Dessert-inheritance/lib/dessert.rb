class Dessert
  attr_reader :name, :calories
  def initialize(name, calories)
    @calories = calories
    @name = name
  end

  def healthy?
    if @calories < 200
      return true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end
end