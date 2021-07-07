require "pry"
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
		Appointment.new(self, patient, date)
	end

	def appointments
		Appointment.all.select {|appointment| appointment.doctor == self}
	end

	def patients
		appointments.map {|appointment| appointment.patient}
	end


end