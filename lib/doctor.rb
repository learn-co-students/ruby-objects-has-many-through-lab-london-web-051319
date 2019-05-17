class Doctor

  attr_accessor :patient, :appointment

  @@all = []

  def initialize(patient, appointment)
    @patient = appointment
    @appointment = appointment
    @@all << self
  end

  def self.all
   @@all
 end

 def new
 end

 def new_appointment
 end

 def patients
 end

end
