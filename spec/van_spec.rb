require 'van'

describe Van do
  it {is_expected.to respond_to(:collect_broken_bikes)}
  it {is_expected.to respond_to(:deliver_broken_bikes)}
  it {is_expected.to respond_to(:collect_fixed_bikes)}
  it {is_expected.to respond_to(:deliver_fixed_bikes)}
end
