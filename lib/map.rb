class Map
  attr_reader :axis_x, :axis_y

  def initialize(axis_x, axis_y)
    @axis_x = axis_x
    @axis_y = axis_y
  end

  def match_boundary(axis_x, axis_y)
    @axis_x >= axis_x && @axis_y >= axis_y
  end
end
