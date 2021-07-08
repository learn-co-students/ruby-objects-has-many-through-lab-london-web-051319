# as appointment belongs to doctor
# it should take in a doctor param

# all class & method to keep track of all appointments made

# should be initialized with a date, patient, and doctor

class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
