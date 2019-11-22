class Patient 
  
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
    def appointments
        Appointment.all.select{ |app|  app.patient == self}
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end

  def self.all
    @@all 
  end 
end 