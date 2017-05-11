# Feature Tests

require './lib/dockingstation.rb'

dock = DockingStation.new
bike = Bike.new

# It checks for a capacity instance variable

p dock.bikes
p dock.capacity
