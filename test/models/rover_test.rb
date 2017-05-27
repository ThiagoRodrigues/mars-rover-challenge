require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class RoverTest < Minitest::Test

  def setup
    @map = Map.new("5 5")
  end


  # 1 2 N
  # LMLMLMLMM
  #
  def test_process_commands_first_rover
    rover = Rover.new("1 2 N", @map)
    rover.process_commands("LMLMLMLMM")
    assert_equal rover.report_position, "1 3 N"
  end

  # 3 3 E
  # MMRMMRMRRM
  #
  def test_process_commands_second_rover
    rover = Rover.new("3 3 E", @map)
    rover.process_commands("MMRMMRMRRM")
    assert_equal rover.report_position, "5 1 E"
  end
end

