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

   it 'is the same insurance if it has the same name' do
    test_ins1 = Insurance.new({:name =>'Brown'})
    test_ins2 = Insurance.new({:name =>'Brown'})
    expect(test_ins1).to eq test_ins2
  end
end
