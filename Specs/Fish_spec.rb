require('minitest/autorun')
require('minitest/reporters')

require_relative('../Fish')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Salmon")
  end

  def test_name
    assert_equal("Salmon", @fish.name)
  end

end
