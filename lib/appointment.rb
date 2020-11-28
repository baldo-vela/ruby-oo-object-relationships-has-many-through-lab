class Appointment
    attr_accessor :doctor, :patient, :date

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(date, patient, doctor)
        @doctor = doctor
        @patient = patient
        @date = date
        save
    end

end