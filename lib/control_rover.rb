require_relative './surface'
require_relative './rover'
require_relative './command_handler'
require_relative './directions/east'
require_relative './directions/north'
require_relative './directions/south'
require_relative './directions/west'

upper_right = ARGF.gets.split

until ARGF.eof
  input             = ARGF.gets.split
  position          = {x_point: input.first, y_point: input[1]}
  direction_command = input[2]
  surface           = Surface.new(upper_right[0], upper_right[1])
  rover             = Rover.new(position, direction_command, surface)
  CommandHandler.new(rover).handle(ARGF.gets)
  puts rover
end
