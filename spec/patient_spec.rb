require 'spec_helper'

describe Patient do

  it "should initialize with a name, birthday and doctor id" do
    test_patient = Patient.new({:name => "Josh", :birthday => '1985-12-01' , :doctor_id => 1})
    expect(test_patient).to be_an_instance_of Patient
  end

end

