
class StateController

   attr_accessor :current_position, :map, :orientation

  def initialize(coordinates, map)
    @map = map
    update_position(coordinates)
  end

  def report_position
    @current_position.values
  end

  def move_foward
    coordinates = @orientation.move_foward
    if valid_coordinates?(coordinates)
      update_position(coordinates)
      return
    end
    puts "Sorry, can't move this way!"
  end

  def turn_left
    coordinates = @orientation.turn_left
    update_position(coordinates)
  end

  def turn_right
    coordinates = @orientation.turn_right
    update_position(coordinates)
  end

  private

  def update_position(coordinates)
    coordinates = coordinates.split if coordinates.is_a? String

    @current_position ||= { axis_x: 0, axis_y: 0, heading: nil }

    @current_position[:axis_x] += coordinates[0].to_i
    @current_position[:axis_y] += coordinates[1].to_i
    @current_position[:heading] = coordinates[2]

    @orientation = Orientation.get_orientation(@current_position[:heading])
  end

  def valid_coordinates?(coordinates)
    @map.match_boundary?(
      @current_position[:axis_y] + coordinates[0],
      @current_position[:axis_y] + coordinates[1]
    )
  end

end
