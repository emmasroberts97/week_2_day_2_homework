require('minitest/autorun')
require('minitest/reporters')

require_relative('../Bear')
require_relative('../River')
require_relative('../Fish')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Panda")
    @fish = Fish.new("Trout")
  end

  def test_take_fish
    value = @bear.take_fish(@fish)
    assert_equal(1, @bear.fish_count)
  end

  def test_fish_count
    @bear.take_fish(@fish)
    @bear.take_fish(@fish)
    assert_equal(2, @bear.fish_count)
  end

  def test_roar
    assert_equal("ROAR", @bear.roar)
  end

end
