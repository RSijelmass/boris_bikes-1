# Feature Tests

require './lib/dockingstation.rb'

dock = DockingStation.new
bike = Bike.new

# It can respond 'true' to .report_broken

bike.report_broken == true

# It can set working? to false

bike.working? == true
bike.report_broken
bike.working? == false # Expected to eq true

# Only release a bike if @status == working
dock.dock_bike(bike)
p dock.release_bike == "Unfortunately all docked bikes are broken" # Expected to eq true
