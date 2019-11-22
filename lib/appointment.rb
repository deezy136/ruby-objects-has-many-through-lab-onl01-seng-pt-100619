class Appointment
  
  attr_accessor :date, :patient, :doctor
  @@all =[]
  
  def initialize(date, patient, doctor)
  
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self 
   
  end 
  
  def self.all 
    @@all 
  end 
  
  def patient
  if @patient.to_s 
   @date 
  else 
    @patient
  end 
  end 

  def doctor
      @doctor
  end 
  
end 