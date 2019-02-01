class Rover
  def initialize(current_position, direction_command, surface)
    @current_position   = current_position
    @direction_command  = direction_command
    @direction          = direction
    @surface            = surface
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move
    return if out_of_bounds?
    @current_position = @direction.move(@current_position)
  end

  def to_s
    "#{@current_position[:x_point]} #{@current_position[:y_point]} #{@direction}"
  end

  private

  def direction
    case @direction_command
    when 'N'
      Directions::North.new
    when 'E'
      Directions::East.new
    when 'W'
      Directions::West.new
    when 'S'
      Directions::South.new
    end
  end

  def out_of_bounds?
    current_position = @direction.move(@current_position)
    x_axis           = current_position[:x_point]
    y_axis           = current_position[:y_point]

    if x_axis > @surface.width || y_axis > @surface.height || x_axis < 0 || \
      y_axis < 0
      return true
    end
  end
end
