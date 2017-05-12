require_relative 'bike'

class DockingStation
attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
    @broken_bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    hold?
  end

  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    @bikes.last
  end

  def release_broken_bikes
    @bikes.each do |bike|
      next if bike.working?
      @broken_bikes << bike
    end
    @broken_bikes
  end

  private
    def full?
      @bikes.count >= @capacity ? true : false
    end

    def empty?
      @bikes.count == 0 ? true : false
    end

    def hold?
      @bikes.each do |bike|
        next if bike.working? == false
        @bikes.delete(bike)
        return bike
      end
      fail "Unfortunately all docked bikes are broken"
    end

end
