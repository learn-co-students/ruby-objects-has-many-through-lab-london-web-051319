class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |bookings|
      bookings.patient == self
    end
  end

  def doctors
    self.appointments.collect do |booking|
      booking.doctor
    end
  end
end