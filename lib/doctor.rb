# Doctor Class
class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
