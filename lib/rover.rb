# represents the explorer of Mars's surface

class Rover

  def initialize(coordinates, map)
    @controller = StateController.new(coordinates, map)
  end

  def process_commands(instructions)
    instructions.split('').each do |command|
      execute(command.upcase)
    end
  end

  def report_position
    @controller.report_position.join(' ')
  end

  private
  def execute(command)
    case command
    when "M" then @controller.move_foward
    when "R" then @controller.turn_right
    when "L" then @controller.turn_left
    else
      puts "Invalid Command!"
    end
  end
end
