module ToyRobot

  class Simulation

    attr_reader :robot

    def initialize(tabletop)
      @tabletop = tabletop
    end

    def place(xposition, yposition, facing, name="Jane")
      if !@tabletop.valid_position?(xposition, yposition)
        return "That's not on the table"
      else
        return @robot = Robot.new(xposition, yposition, facing, name)
      end
    end

    def robot_placed?
      !robot.nil?
    end

    def move
      if !robot_placed?
        return "A robot which is not on the table cannot move"
      elsif !@tabletop.valid_position?(*robot.next_position)
        return "I don't want to fall of the table!"
      else
        robot.move
      end
    end

    def turn_left
      if !robot_placed?
        return "A robot which is not on the table cannot turn"
      else
        robot.turn_left
      end
    end

    def turn_right
      if !robot_placed?
        return "A robot which is not on the table cannot turn"
      else
        robot.turn_right
      end
    end

    def report
      if !robot_placed?
        return "I am not currently on the table"
      else
        details = robot.report
        "My name is #{details[:name]} and I am at position #{details[:xposition]}, #{details[:yposition]} and I am facing #{details[:facing]}"
      end

    end



  end

end
