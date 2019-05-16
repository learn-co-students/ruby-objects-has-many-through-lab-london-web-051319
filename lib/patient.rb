class Patient
  attr_accessor :name, :appointments, :doctor
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    self.appointments.map {|appt| appt.doctor}
  end
end
