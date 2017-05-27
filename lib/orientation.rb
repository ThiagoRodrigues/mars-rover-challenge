class Orientation

  COMPASS = {
    "N" => "NorthFaced",
    "E" => "EastFaced",
    "S" => "SouthFaced",
    "W" => "WestFaced"
  }.freeze

  def self.get_orientation(instance_key)
    if COMPASS.has_key?(instance_key)
      return Kernel.const_get(COMPASS[instance_key]).new
    end
    raise InvalidOrientationError.new("Invalid instance_key")
  end

  def move_foward; end
  def turn_left; end
  def turn_right; end

end


# Subclasses of Orientation
#
# North, East, South and West Facets could moviment the Rover
# based on it(Rover) actual coords
#
class NorthFaced < Orientation
  def turn_left
    [0, 0, "W"]
  end

  def turn_right
    [0, 0, "E"]
  end

  def move_foward
    [0, 1, "N"]
  end
end

class EastFaced < Orientation
  def turn_left
    [0, 0, "N"]
  end

  def turn_right
    [0, 0, "S"]
  end

  def move_foward
    [1, 0, "E"]
  end
end

class SouthFaced < Orientation
  def turn_left
    [0, 0 , "E"]
  end

  def turn_right
    [0, 0 , "W"]
  end

  def move_foward
    [0, -1, "S"]
  end
end

class WestFaced < Orientation
  def turn_left
    [0, 0 , "S"]
  end

  def turn_right
    [0, 0 , "N"]
  end

  def move_foward
    [-1, 0, "W"]
  end
end

class InvalidOrientationError < StandardError
  attr_reader :message
  def initialize(msg)
    @message = msg
    super("InvalidOrientationError")
  end
end
