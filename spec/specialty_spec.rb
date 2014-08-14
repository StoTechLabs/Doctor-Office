require 'spec_helper'

describe Specialty do

  it 'is initialized with a name' do
    test_specialty = Specialty.new({:name => 'hand'})
    expect(test_specialty).to be_an_instance_of Specialty
  end

  it 'sets the specialty id when it is saved' do
    test_specialty = Specialty.new({:name => 'Hand'})
    test_specialty.save
    expect(test_specialty.id).to be_an_instance_of Fixnum
  end


end
