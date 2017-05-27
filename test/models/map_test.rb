require File.expand_path(File.dirname(__FILE__) + '/../test_helper')


class MapTest < Minitest::Test
  def setup
    @map = Map.new("5 5")
  end

  def test_map_size
    assert_equal @map.axis_x, 5
    assert_equal @map.axis_y, 5
  end

  def test_match_boundary_valid
    assert @map.match_boundary?(5, 5)
  end

  def test_match_boundary_invalid
    refute @map.match_boundary?(7, 8)
  end

end
