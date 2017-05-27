require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
class StateControllerTest < Minitest::Test

  def setup
    @controller = StateController.new("1 2 W", Map.new("5 5"))
  end

  def test_report_position
    assert_equal @controller.report_position, [1, 2, "W"]
  end

  def test_move_foward
    @controller.move_foward
    assert_equal @controller.report_position, [0, 2, "W"]
  end

  def test_turn_left
    @controller.turn_left
    assert_equal @controller.report_position, [1, 2, "S"]
  end

  def test_turn_right
    @controller.turn_right
    assert_equal @controller.report_position, [1, 2, "N"]
  end


end
