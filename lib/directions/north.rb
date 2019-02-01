module Directions
  class North
    def turn_right
      Directions::East.new
    end

    def turn_left
      Directions::West.new
    end
    
    def move(current_position)
      x_axis = Integer(current_position[:x_point])
      y_axis = Integer(current_position[:y_point]) + 1
      {x_point: x_axis, y_point: y_axis}
    end

    def to_s
      'N'
    end
  end
end
