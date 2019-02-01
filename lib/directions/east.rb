module Directions
  class East
    def turn_right
      Directions::South.new
    end

    def turn_left
      Directions::North.new
    end

    def move(current_position)
      x_axis = Integer(current_position[:x_point]) + 1
      y_axis = Integer(current_position[:y_point])
      {x_point: x_axis, y_point: y_axis}
    end

    def to_s
      'E'
    end
  end
end
