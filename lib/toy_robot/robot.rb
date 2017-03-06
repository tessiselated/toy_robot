module ToyRobot

  class Robot

    attr_reader :xposition, :yposition, :facing, :name

    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

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
      current_index = DIRECTIONS.index(facing)
      @facing = DIRECTIONS.rotate(-1)[current_index]
    end

    def turn_right
      current_index = DIRECTIONS.index(facing)
      @facing = DIRECTIONS.rotate(1)[current_index]
    end

  end

end
