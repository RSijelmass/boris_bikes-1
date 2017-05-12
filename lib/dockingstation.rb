require_relative 'bike'

class DockingStation
attr_reader :bikes, :capacity

  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
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
