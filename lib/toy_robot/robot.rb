module ToyRobot

  class Robot

    attr_reader :xposition, :yposition, :direction, :name

    def initialize(xposition=0, yposition=0, direction="NORTH", name="Jane")
      @xposition = xposition
      @yposition = yposition
      @direction = direction
      @name = name
    end

    def move
      case direction
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

  end

end
