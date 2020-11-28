class Patient
    attr_accessor :name
    @@all =[]
    def initialize(name)
        # An patient is initialized with a name and is saved in the @@all array.
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        return @@all
    end

    def new_appointment(date, doctor)
        # Patient #new_appointment given a doctor and a date, creates a new appointment belonging to that patient
        Appointment.new(date, self, doctor)
    end

    def appointments
        # returns all appointments associated with this Patient
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        # Patient #doctors has many doctors through appointments
        self.appointments.map {|appt| appt.doctor}
    end
    
end
