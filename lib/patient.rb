class Patient
  attr_reader :name, :birthday, :doctor_id

  def initialize(attributes)
    @name = attributes[:name]
    @birthday = attributes[:birthday]
    @doctor_id = attributes[:doctor_id]
  end

  def save
    results = DB.exec("INSERT INTO patient (name, birthday, doctor_id) VALUES ('#{name}', '#{birthday}', #{doctor_id});")
  end


  def self.all
    results = DB.exec("SELECT * FROM patient")
    patients = []
    results.each do |result|
      name = result['name']
      birthday = result['birthday']
      doctor_id = result['doctor_id'].to_i
      patients << Patient.new({:name => name, :birthday => birthday, :doctor_id => doctor_id})
    end
    patients
  end

   def ==(another_patient)
    self.name == another_patient.name && self.birthday == another_patient.birthday
  end


end
