require 'rspec'
require 'doctor'
# require 'patient'
require 'pg'


DB = PG.connect(:dbname => 'test_doctor_office')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM patient *;")
    DB.exec("DELETE FROM doctor *;")
  end
end
