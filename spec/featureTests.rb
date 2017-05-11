# Feature Tests

require './lib/dockingstation.rb'

dock = DockingStation.new
bike = Bike.new

# It allows upto 20 bikes to dock_bike
# p 'pass' if 20.times { dock.dock_bike(Bike.new) }

# It checks whether the docking station is full?
20.times { dock.dock_bike(Bike.new) }
p 'pass' if dock.full? == true
