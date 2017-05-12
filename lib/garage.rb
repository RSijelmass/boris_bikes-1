class Garage

  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
    @fixed_bikes = []
  end

  def accept_broken_bikes(van)
    #van.deliver_broken_bikes
  end

  def return_fixed_bikes

  end

  def fix_bikes

  end
end
