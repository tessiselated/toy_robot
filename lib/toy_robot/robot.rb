module ToyRobot

  DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

  class Robot

    attr_reader :xposition, :yposition, :facing, :name


    $default_name = "Jane"

    def initialize(xposition=0, yposition=0, facing="NORTH")
      @xposition = xposition
      @yposition = yposition
      @facing = facing
      @name = $default_name
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

    def next_position
      case facing
      when "NORTH"
        [@xposition + 1, @yposition]
      when "EAST"
        [@xposition, @yposition + 1]
      when "SOUTH"
        [@xposition - 1, @yposition]
      when "WEST"
        [@xposition, @yposition -1]
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

    def report
      { xposition: xposition,
        yposition: yposition,
        facing: facing,
        name: name
      }
    end

  end

end
