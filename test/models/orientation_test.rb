require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class OrientationTest < Minitest::Test

  def setup
    @map = Map.new(3, 3)
  end

  ## NORTHFACED
  #
  def test_turn_left_when_north_faced
    state = StateController.new("1 1 N", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "W"], orientation.turn_left
  end

  def test_turn_right_when_north_faced
    state = StateController.new("1 1 N", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "E"], orientation.turn_right
  end

  def test_move_foward_when_north_faced
    state = StateController.new("1 1 N", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 1, "N"], orientation.move_foward
  end


  ## EASTFACED
  #
  def test_turn_left_when_east_faced
    state = StateController.new("1 1 E", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "N"], orientation.turn_left
  end

  def test_turn_right_when_east_faced
    state = StateController.new("1 1 E", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "S"], orientation.turn_right
  end

  def test_move_foward_when_east_faced
    state = StateController.new("1 1 E", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [1, 0, "E"], orientation.move_foward
  end

  ##SOUTHFACED
  #
  def test_turn_left_when_south_faced
    state = StateController.new("1 1 S", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "E"], orientation.turn_left
  end

  def test_turn_right_when_south_faced
    state = StateController.new("1 1 S", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "W"], orientation.turn_right
  end

  def test_move_foward_when_south_faced
    state = StateController.new("1 1 S", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, -1, "S"], orientation.move_foward
  end

  ##WESTFACED
  #
  def test_turn_left_when_west_faced
    state = StateController.new("1 1 W", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "S"], orientation.turn_left
  end

  def test_turn_right_when_west_faced
    state = StateController.new("1 1 W", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [0, 0, "N"], orientation.turn_right
  end

  def test_move_foward_when_west_faced
    state = StateController.new("1 1 W", @map)
    orientation = Orientation
        .get_orientation(state.current_position[:heading])

    assert_equal [-1, 0, "W"], orientation.move_foward
  end
end


