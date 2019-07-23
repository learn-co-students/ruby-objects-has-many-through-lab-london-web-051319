require "pry"

class Patient

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

   def new_appointment(doctor, date)
      Appointment.new(self, date, doctor)
   end

   def appointments
      appts = []
      Appointment.all.each do |appointments|
         appointments.patient == self  ? appts << appointments : nil
      end
   end

   def doctors
      docs = []
      Appointment.all.each do |appointments|
         docs << appointments.doctor
      end
      docs
   end

end