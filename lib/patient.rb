# @@all & self.all
# needs name when instantiated
# new_appointment takes in doctor and date

# appointments returns appoinments of that patients

# doctors method that returns doctors for each appointments

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |inst| inst.patient == self }
  end

  def doctors
    appointments.map { |inst| inst.doctor }
  end

  def self.all
    @@all
  end

end
