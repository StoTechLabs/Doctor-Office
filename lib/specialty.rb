

class Specialty
 attr_reader :name, :id

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
  end

  def save
  results = DB.exec("INSERT INTO Specialty (name) VALUES ('#{name}') RETURNING id;")
  @id = results.first['id'].to_i
  end

  def self.all
    results = DB.exec("SELECT * FROM specialty;")
    specialty = []
    results.each do |result|
      name = result['name']
      specialty << Specialty.new({:name => name})
    end
    specialty
  end

end
