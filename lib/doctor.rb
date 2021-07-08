# all var
# .all class method

# creates new_appointment(patience_instance, date) method
# appointment should belong to doctor

# appointments returns appointments belonging to that doctor

# inst method 'patients' to iterate over Appointment.all
# and returns each patient

class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |inst| inst.doctor == self }
  end

  def patients
    appointments.map { |inst| inst.patient }
  end

  def self.all
    @@all
  end

end
