class Appointment
  @@all = []

  attr_accessor :doctor, :date, :patient

  def initialize(doctor, patient, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end



end
