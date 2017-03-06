module ToyRobot

  class Robot

    attr_reader :xposition, :yposition, :facing, :name



    def initialize(xposition=0, yposition=0, facing="NORTH", name="Jane")
      @xposition = xposition
      @yposition = yposition
      @facing = facing
      @name = name
    end

    def move
      case facing
      when "NORTH"
        @xposition += 1
      when "EAST"
        @yposition += 1
      when "SOUTH"
        @xposition -= 1
      when "WEST"
        @yposition -= 1
      end
    end

    def turn_left

    end

  end

end
