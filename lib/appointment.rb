class Appointment
   attr_accessor :date, :patient, :doctor
   @@all = []
   
   def initialize(name)
     @name = name
   end



   def self.all
     @@all
   end
end
