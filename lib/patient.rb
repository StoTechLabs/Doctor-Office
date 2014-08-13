class Patient
  attr_reader :name, :birthday, :doctor_id

  def initialize(attributes)
    @name = attributes[:name]
    @birthday = attributes[:birthday]
    @doctor_id = attributes[:doctor_id]
  end


end
