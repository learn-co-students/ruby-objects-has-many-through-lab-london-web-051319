class Doctor

attr_accessor :name, :appointments, :patients

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
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    self.appointments.map {|appt| appt.patient}
  end

end
