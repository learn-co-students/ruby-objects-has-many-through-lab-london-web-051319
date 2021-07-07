require_relative "appointment.rb"
require_relative "patient.rb"

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
    Appointment.new(date, patient, self)

  end

  def appointments
    Appointment.all.select {|appointment_booking| appointment_booking.doctor == self}
  end

  def patients
    appointments.map {|appointment_booking| appointment_booking.patient}
  end










end
