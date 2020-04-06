class Doctor
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.doctor==self
    end
  end
  
  def patients
    allofem=[]
    appointments.each do |eachone|
      allofem << eachone.appointments
    end
    return allofem
  end
end