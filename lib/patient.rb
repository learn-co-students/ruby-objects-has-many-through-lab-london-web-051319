class Patient
  @@all = []
  attr_reader :name, :appointments
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
    appointment
  end
  def self.all
    @@all
  end
  def doctors
    @appointments.reduce([]) { |arr, appointment| arr << appointment.doctor } 
  end
end
