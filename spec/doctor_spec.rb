require 'doctor'
require 'rspec'

describe Doctor do

  it 'is initialized with a name and specialty id' do
    test_doctor = Doctor.new({:name =>'Brown', :specialty_id => 2})
    expect(test_doctor).to be_an_instance_of Doctor
  end

  it 'returns the name' do
    test_doctor = Doctor.new({:name => 'Brown', :specialty_id => 2})
    expect(test_doctor.name). to eq 'Brown'
  end
end
