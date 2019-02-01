class CommandHandler
  HANDLEABLE_COMMANDS = %w(R L M).freeze
  def initialize(rover)
    @rover = rover
  end

  def handle(commands)
    commands.each_char do |command|
      run(command) if HANDLEABLE_COMMANDS.include?(command)
    end
  end

  private

  def run(command)
    options = { 'L': 'turn_left', 'R': 'turn_right', 'M': 'move' }
    @rover.send(options[command.to_sym])
  end
end
