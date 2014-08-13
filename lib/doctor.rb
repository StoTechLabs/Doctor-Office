class Doctor
  attr_reader :name, :specialty_id

  def initialize(attributes)
    @name = attributes[:name]
    @specialty_id = attributes[:specialty_id]
  end

  def save
   results =DB.exec("INSERT INTO doctor (name, specialty_id) VALUES ('#{name}', #{specialty_id});")
  end

  def self.all
    results = DB.exec("SELECT * FROM doctor;")
    doctors = []
    results.each do |result|
      name = result['name']
      specialty_id = result['specialty_id'].to_i
      doctors << Doctor.new({:name => name, :specialty_id => specialty_id})
    end
    doctors
  end



end
