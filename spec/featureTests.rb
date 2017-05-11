# Feature Tests

require './lib/dockingstation.rb'

dock = DockingStation.new
bike = Bike.new
bike2 = Bike.new

# It allows upto 20 bikes to dock_bike
p 'pass' if 20.times { dock.dock_bike(Bike.new) }

# It does not allow the 21st bike to be docked
p 'pass' if 21.times { dock.dock_bike(Bike.new) }
