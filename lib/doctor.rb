require "pry"

class Doctor

   attr_reader
   attr_accessor :name

   @@all = []

   def initialize(name)
      @name = name
      @@all << self
   end

   def self.all
      @@all
   end

   def new_appointment(date, patient)
      Appointment.new(date, patient, self)
   end

   def appointments
      appts = []
      Appointment.all.each do |appointments|
         appointments.doctor == self  ? appts << appointments : nil
      end
   end

   def patients
      pats = []
      Appointment.all.each do |appointments|
         pats << appointments.patient
      end
      pats
   end

end