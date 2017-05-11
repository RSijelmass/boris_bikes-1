require "dockingstation.rb"

describe DockingStation do

  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  it { is_expected.to respond_to :bikes }
  it { is_expected.to respond_to :capacity }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it "releases working bikes" do
      #bike = subject.release_bike
      bike = Bike.new
      subject.dock_bike(bike)
      expect(bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock_bike' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes.last).to eq bike
    end

    it 'raises an error when attempting to dock a bike in a full station' do
      (subject::capacity).times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
    end

    it 'raises an error when attempting to call .empty from outside instances of the DockingStation class' do
      expect { subject.empty? }.to raise_error(NoMethodError)
    end

    it 'returns a capacity of 20 if a new docking station is instantiated without an argument' do
      expect(subject::capacity).to eq (20)
    end

    it 'returns the argued capacity if a new DockingStation is instantiated with an arg' do
      new_capacity = 15
      subject = DockingStation.new(new_capacity)
      expect(subject::capacity).to eq new_capacity
    end
  end

end
