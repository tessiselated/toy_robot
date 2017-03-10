require_relative 'lib/toy_robot.rb'


puts "Welcome to the robot simulator. Would you like to run the robot on a standard 5 x 5 board? Type y for yes, n to enter your own parameters or any other key to exit the simulation"

@tabletop_options = gets.chomp.downcase

if @tabletop_options === "y"
  @tabletop = ToyRobot::Tabletop.new
elsif @tabletop_options === "n"
  loop do # Loops until an integer value for height is given
    puts "Please enter tabletop height"
     @height = Integer(gets) rescue nil
     break if @height.is_a? Integer
   end
   loop do # Loops until an integer value for width is given
     puts "Please enter tabletop width"
     @width = Integer(gets) rescue nil
     break if @width.is_a? Integer
   end
  @tabletop = ToyRobot::Tabletop.new(@height, @width)
else
  abort
end

@simulation = ToyRobot::Simulation.new(@tabletop)

puts "Please enter a name for the robot."

$default_name = gets.chomp

loop do
  puts "Please enter a command for the robot. Type exit to leave the simulation. The robot understand commands in the format 'PLACE X,Y,F' MOVE, LEFT, RIGHT and REPORT"
  @input = gets.chomp
  break if @input === "exit"
  command, *args = ToyRobot::Command.process(@input)
  @simulation.send(command, *args)
end
