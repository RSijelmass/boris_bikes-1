require 'van'

describe Van do
  let (:bike) { double(:bike) }

  it {is_expected.to respond_to(:collect_broken_bikes)}
  it {is_expected.to respond_to(:deliver_broken_bikes)}
  it {is_expected.to respond_to(:collect_fixed_bikes)}
  it {is_expected.to respond_to(:deliver_fixed_bikes)}
  it {is_expected.to respond_to(:payload)}

  it 'collects broken bikes from DockingStation and adds to payload' do
    allow(bike).to receive(:broken_bikes).and_return(bike)
    expect(subject.payload).to eq double(:docking_station, release_broken_bikes:[:broken_bikes])
  end

end
