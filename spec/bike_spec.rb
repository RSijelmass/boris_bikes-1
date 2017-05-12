require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :report_broken }

  it 'changes .working? from true to false' do
    expect(subject.working?).to eq true
    subject.report_broken
    expect(subject.working?).to eq false
  end
end
