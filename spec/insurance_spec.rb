require 'spec_helper'

describe Insurance do
  it 'is initialized with a name' do
    test_ins = Insurance.new({:name => 'Red Shield'})
    expect(test_ins).to be_an_instance_of Insurance
  end

  it 'sets the insurance id when it is saved' do
    test_ins = Insurance.new({:name => 'Red Shield'})
    test_ins.save
    expect(test_ins.id).to be_an_instance_of Fixnum
  end
end
