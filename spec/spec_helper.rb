require 'rspec'
require 'doctor'
require 'patient'
require 'specialty'
require 'insurance'
require 'pg'


DB = PG.connect(:dbname => 'doctors_office')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM patient *;")
    DB.exec("DELETE FROM doctor *;")
    DB.exec("DELETE FROM specialty*;")
    DB.exec("DELETE FROM insurance*;")
  end
end
