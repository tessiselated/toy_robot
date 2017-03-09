require_relative 'lib/toy_robot.rb'
require 'pry'

puts "Welcome to the robot simulator. Would you like to run the robot on a standard 5 x 5 board? Type y for yes, n to enter your own parameters or any other key to exit the simulation"

@tabletop_options = gets.chomp.downcase

if @tabletop_options === "y"
  @tabletop = ToyRobot::Tabletop.new
elsif @tabletop_options === "n"
  puts "Please enter tabletop height"
  @height = gets.chomp.to_i
  puts "Please enter tabletop width"
  @width = gets.chomp.to_i
  @tabletop = ToyRobot::Tabletop.new(@height, @width)
else
  abort #need to look into this
end

@simulation = ToyRobot::Simulation.new(@tabletop)

puts "Please enter a name for the robot."

@name = gets.chomp

loop do
  puts "Please enter a command for the robot. Type exit to leave the simulation"
  break if @input === "exit"
  @input = gets.chomp
  command, *args = ToyRobot::Command.process(@input)
  @simulation.send(command, *args)
end




binding.pry
