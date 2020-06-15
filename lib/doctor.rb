class Doctor
  attr_reader :name, :appointments
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end
  def patients
    @appointments.reduce([]) do |result, appointment|
      result << appointment.patient if appointment.doctor == self
      result
    end
  end
end
