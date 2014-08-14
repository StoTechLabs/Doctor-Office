require 'spec_helper'

describe Patient do

  it "should initialize with a name, birthday and doctor id" do
    test_patient = Patient.new({:name => "Josh", :birthday => '1985-12-01' , :doctor_id => 1})
    expect(test_patient).to be_an_instance_of Patient
  end

  it 'returns the name, birthday and doctor id' do
    test_patient = Patient.new({:name => 'Josh', :birthday => '1985-12-01', :doctor_id => 1})
    expect(test_patient.name).to eq 'Josh'
    expect(test_patient.birthday).to eq '1985-12-01'
    expect(test_patient.doctor_id).to eq 1
  end

  it 'creates an empty array to store patient information' do
    expect(Patient.all). to eq []
  end

  it 'saves the patient to the database' do
    test_patient = Patient.new({:name => 'Josh', :birthday => '1985-12-01', :doctor_id => 1})
    test_patient.save
    expect(Patient.all).to eq [test_patient]
  end

  it 'is the same patient if it has the same name and birthday' do
    test_patient1 = Patient.new(:name => 'Brown', :birthday => 2)
    test_patient2 = Patient.new(:name => 'Brown', :birthday => 2)
    expect(test_patient1).to eq test_patient2
  end

  it 'sets the patient id when it is saved' do
    test_patient = Patient.new({:name => 'Josh', :birthday => '1985-12-01', :doctor_id => 1})
    test_patient.save
    expect(test_patient.id).to be_an_instance_of Fixnum
  end


end

