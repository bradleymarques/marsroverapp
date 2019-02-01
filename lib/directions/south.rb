module Directions
  class South
    def turn_right
      Directions::West.new
    end

    def turn_left
      Directions::East.new
    end

    def move(current_position)
      x_axis = Integer(current_position[:x_point])
      y_axis = Integer(current_position[:y_point]) - 1
      {x_point: x_axis, y_point: y_axis}
    end

    def to_s
      'S'
    end
  end
end
