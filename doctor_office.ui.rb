require 'pg'
require './lib/doctor'
require './lib/patient'
require './lib/specialty'
require './lib/insurance'



DB = PG.connect(:dbname => 'doctors_office')

@current_doctor = nil
@current_patient = nil
@current_specialty = nil
@current_insurance = nil


def main_menu
  loop do
    system 'clear'
    puts '***DOCTORS OFFICE***'
    puts  "Type 'a' to add a Doctor, Type 'l' to list all doctors or Type 'x' to exit the program"
    choice = gets.chomp
    if choice == 'a'
      add_doctor
    elsif choice == 'l'
      list_doctor
    elsif choice == 'x'
      puts "Thank your for visiting the Doctor's Office. Goodbye!"
      exit
    else
      puts "Not a valid entry. Please try again"
      sleep(0.5)
    end
  end
end

def add_doctor
  puts "Please enter the Doctor's Name"
  choice = gets.chomp
  sleep(1.0)
  puts "This doctor has been added"
  puts "Please enter the Doctor's Specialty"
  specialty_name = gets.chomp
  @current_specialty = Specialty.new({:name => specialty_name})
  @current_specialty.save
  sleep(1.0)
  puts "This specialty has been added."
  puts "Please enter the insurance that the Doctor accepts"
  insurance_name = gets.chomp
  @current_insurance = Insurance.new({:name => insurance_name})
  @current_insurance.save
  sleep(1.0)
  puts "Insurance has been added"
  @current_doctor = Doctor.new({:name => choice, :specialty_id => @current_specialty.id, :insurance_id => @current_insurance.id})
  @current_doctor.save
  sleep(1.0)
  main_menu
end



main_menu
