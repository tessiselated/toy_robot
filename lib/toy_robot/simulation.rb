module ToyRobot

  class Simulation

    attr_reader :robot

    def initialize(tabletop)
      @tabletop = tabletop
    end

    def place(xposition, yposition, facing, name="Jane")
      if !@tabletop.valid_position?(xposition, yposition)
        puts "That's not on the table"
      else
        puts "I am on the table!"
        return @robot = Robot.new(xposition, yposition, facing, name)
      end
    end

    def robot_placed?
      !robot.nil?
    end

    def move
      if !robot_placed?
        puts "A robot which is not on the table cannot move"
      elsif !@tabletop.valid_position?(*robot.next_position)
        puts "I don't want to fall off the table!"
      else
        puts "Beep boop. Moving forward"
        robot.move
      end
    end

    def turn_left
      if !robot_placed?
        puts "A robot which is not on the table cannot turn"
      else
        puts "Turning left"
        robot.turn_left
      end
    end

    def turn_right
      if !robot_placed?
        puts "A robot which is not on the table cannot turn"
      else
        puts "Turning right"
        robot.turn_right
      end
    end

    def report
      if !robot_placed?
        puts "I am not currently on the table"
      else
        details = robot.report
        puts "My name is #{details[:name]} and I am at position #{details[:xposition]}, #{details[:yposition]} and I am facing #{details[:facing]}"
      end

    end

    def invalid(command)
      puts "I'm sorry, I do not understand #{command}. I understand commands in the format 'PLACE X,Y,F' MOVE, LEFT, RIGHT and REPORT"
    end



  end

end
