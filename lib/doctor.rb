class Doctor
  attr_reader :name, :specialty_id

  def initialize(attributes)
    @name = attributes[:name]
    @specialty_id = attributes[:specialty_id]
  end

end
