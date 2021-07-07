class Doctor
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(patient, date, self)
        self.appointments.last
    end

    def patients
        appointments.collect {|appointment| appointment.patient}
    end

end