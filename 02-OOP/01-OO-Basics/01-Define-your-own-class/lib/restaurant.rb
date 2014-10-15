class Restaurant
  def initialize(type, ticket_moyen, opening_hour, closing_hour)
    @type = type
    @ticket_moyen = ticket_moyen
    @opening_hour = 11
    @closing_hour = 23
  end

  def open?
    if   opening_hour < Time.now.hour < closing_hour
      return "The restaurant is open"
    else
      return "the restaurant is close"
    end
  end
end

