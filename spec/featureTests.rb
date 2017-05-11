# Feature Tests

require './lib/dockingstation.rb'

dock = DockingStation.new
bike = Bike.new

# It can respond 'false' to .working?

bike.working? == false
