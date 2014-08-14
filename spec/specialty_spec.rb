require 'spec_helper'

describe Specialty do

  it 'is initialized with a name' do
    test_specialty = Specialty.new({:name => 'hand'})
    expect(test_specialty).to be_an_instance_of Specialty
  end


end
