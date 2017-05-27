
# Class whos is representing the navegable surface of Mars
#
class Map
  attr_reader :axis_x, :axis_y

  # Personally, think better pass boundary map as two arg e.g: initialize(5, 5)
  #
  def initialize(boundary)
    @axis_x = boundary.split('').first.to_i
    @axis_y = boundary.split('').last.to_i
  end

  def match_boundary?(axis_x, axis_y)
    @axis_x >= axis_x && @axis_y >= axis_y
  end
end
