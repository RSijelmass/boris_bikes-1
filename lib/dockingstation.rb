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
    find_working_bike
  end

  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    @bikes.last
  end

  def release_broken_bikes
    select_broken_bikes
    @broken_bikes
  end

  private
    def full?
      @bikes.count >= @capacity
    end

    def empty?
      @bikes.count == 0
    end

    def find_working_bike
      @bikes.each{ |bike| (@bikes.delete(bike); return bike) if bike.working? }
      fail "Unfortunately, all docked bikes are broken"
    end

    def select_broken_bikes
      @bikes.each { |bike| next if bike.working?;  @broken_bikes << bike }
    end
end
