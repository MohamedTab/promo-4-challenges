class Restaurant
  attr_reader :localisation
  def initialize(type, ticket_moyen, localisation)
    @type = type
    @ticket_moyen = ticket_moyen
    @localisation = localisation
  end
end

#