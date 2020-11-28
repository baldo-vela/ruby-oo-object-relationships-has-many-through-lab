class Doctor
    attr_reader :name
    @@all =[]
    def initialize(name)
        # An doctor is initialized with a name and is saved in the @@all array.
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        return @@all
    end

    def appointments
        #returns all appointments associated with this Doctor
        Appointment.all.select { |appt| appt.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map { |this_docs_appts| this_docs_appts.patient}
    end

end

