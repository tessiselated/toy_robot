module ToyRobot

  class Tabletop

    attr_reader :height, :width

    def initialize(height=5, width=5)
      @height = height
      @width = width
    end

    def valid_position?(xposition, yposition)
      (0...@height).cover?(xposition) &&
      (0...@width).cover?(yposition)
    end

  end

end
