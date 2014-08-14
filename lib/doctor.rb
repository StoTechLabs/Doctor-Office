class Doctor
  attr_reader :name, :specialty_id, :id

  def initialize(attributes)
    @name = attributes[:name]
    @specialty_id = attributes[:specialty_id]
    @id = attributes[:id]
  end


  def save
   results =DB.exec("INSERT INTO doctor (name, specialty_id) VALUES ('#{name}', #{specialty_id}) RETURNING id;")
   @id = results.first['id'].to_i
  end

  def self.all
    results = DB.exec("SELECT * FROM doctor;")
    doctors = []
    results.each do |result|
      name = result['name']
      specialty_id = result['specialty_id'].to_i
      doctors << Doctor.new({:name =>'Brown', :specialty_id => 2, :insurance_id => 1})
    end
    doctors
  end

  def ==(another_doctor)
    self.name == another_doctor.name && self.specialty_id == another_doctor.specialty_id
  end


end
