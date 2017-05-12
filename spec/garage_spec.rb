require 'garage'

describe Garage do

    let(:bike) { double(:bike) }

    it { is_expected.to respond_to(:fix_bikes) }
    it { is_expected.to respond_to(:fix_bikes) }
    it { is_expected.to respond_to(:accept_broken_bikes).with(1).argument }
    it { is_expected.to respond_to(:return_fixed_bikes) }

    # it 'accepts an array of bikes' do
    #   bike = Bike.new
    #   bike.report_broken
    #   expect(subject.broken_bikes).to eq [bike]
    # end


=begin
    it 'fixes bikes' do
      #allow(bike).to receive(:report_broken).and_return("broken")
      #bike.report_broken
      bike = Bike.new
      bike.report_broken
      subject.accept_bikes
      subject.fix_bikes
      expect(subject.broken_bikes).to eq []
    end
=end
end
