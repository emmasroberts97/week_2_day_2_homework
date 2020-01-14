require('minitest/autorun')
require('minitest/reporters')

require_relative('../Bear')
require_relative('../Fish')
require_relative('../River')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Carp")
    @fish4 = Fish.new("Pike")

    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fish)

    @bear = Bear.new("Yogi", "Grizzly")

  end

  def test_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_get_fish()
    assert_equal(3, @river.get_fish_count)
  end

  def test_add_fish
    @river.add_fish(@fish4)
    assert_equal(4, @river.get_fish_count)
  end

  def test_remove_fish
    @river.remove_fish(@fish1)
    assert_equal(2, @river.get_fish_count)
  end

  def test_bear_takes_fish
    @river.bear_takes_fish(@bear, @fish2)
    assert_equal(2, @river.get_fish_count)
    assert_equal(1, @bear.fish_count)
  end

end
