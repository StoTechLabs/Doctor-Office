class Insurance
  attr_reader :name, :id

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
  end

  def save
    results = DB.exec("INSERT INTO insurance (name) VALUES ('#{name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def self.all
    results = DB.exec("SELECT * FROM patients;")
    insurance = []
    results.each do |result|
      name = result['name']
      insurance << Insurance.new({:name => 'name'})
    end
    insurance
  end
end
