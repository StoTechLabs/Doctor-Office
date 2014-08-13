require 'doctor'
require 'rspec'
require 'PG'

DB = PG.connect(:dbname => 'test_doctor_office')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM doctor *;")
  end
end


describe Doctor do

  it 'is initialized with a name and specialty id' do
    test_doctor = Doctor.new({:name =>'Brown', :specialty_id => 2})
    expect(test_doctor).to be_an_instance_of Doctor
  end

  it 'returns the name' do
    test_doctor = Doctor.new({:name => 'Brown', :specialty_id => 2})
    expect(test_doctor.name). to eq 'Brown'
  end

  it 'starts with an empty array of Doctors' do
    expect(Doctor.all).to eq []
  end


end
