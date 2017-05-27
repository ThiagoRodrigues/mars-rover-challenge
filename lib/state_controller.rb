class StateController

   attr_accessor :current_position, :map

  def initialize(coordinates, map)
    @map = map
    set_current_position(coordinates)
    # @controller =
  end

  def report_position
    @current_position.values
  end

  def move_foward
    coordinates = [-1, 0, "W"]
    set_current_position(coordinates)
  end

  def turn_left
    coordinates = [0, 0, "S"]
    set_current_position(coordinates)
  end

  def turn_right
    coordinates = [0, 0, "N"]
    set_current_position(coordinates)
  end

  private

  def set_current_position(coordinates)
    coordinates = coordinates.split if coordinates.is_a? String

    @current_position ||= { axis_x: 0, axis_y: 0, heading: nil }

    @current_position[:axis_x] += coordinates[0].to_i
    @current_position[:axis_y] += coordinates[1].to_i
    @current_position[:heading] = coordinates[2]
  end
end