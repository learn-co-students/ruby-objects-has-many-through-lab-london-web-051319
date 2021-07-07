require_relative "doctor.rb"
require_relative "appointment.rb"

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
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select {|appointment_booking| appointment_booking.patient == self}
end

def doctors
  appointments.map {|appointment_booking| appointment_booking.doctor}
end


end
