class Patient

  attr_accessor :appointments, :date, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # @appointments = []
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    # @appointments << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
