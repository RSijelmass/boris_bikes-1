require_relative 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.last
  end

  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    @bikes.last
  end

  private
    def full?
      @bikes.count >= 20 ? true : false
    end

    def empty?
      @bikes.count == 0 ? true : false
    end

end
