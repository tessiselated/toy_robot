require 'pry'

module ToyRobot

  class Simulator

    attr_reader :robot

    def initialize(tabletop)
      @tabletop = tabletop
    end

    def place(xposition, yposition, facing, name="Jane")
      if !@tabletop.valid_location?(xposition, yposition)
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
      elsif 
      else
        return robot.move
      end
    end



  end

end
