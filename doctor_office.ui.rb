require 'pg'
require './lib/doctor'
require './lib/patient'

DB = PG.connect(:dbname => 'doctors_office')

@current_doctor = nil
@current_patient = nil

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
  Doctor.new({:name => choice, :specialty_id => '1'}).save
  puts "This doctor has been added"
  sleep(1.0)
  main_menu
end



main_menu
