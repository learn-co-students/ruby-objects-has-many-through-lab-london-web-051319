class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |bookings|
      bookings.doctor == self
    end
  end

  def patients
    self.appointments.collect do |booking|
      booking.patient
    end
  end
end