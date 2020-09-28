require 'pry'
class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment == self}
  end 
  
  def doctors
    Appointment.all.select {|doctor| doctor == self}
    binding.pry 
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

end