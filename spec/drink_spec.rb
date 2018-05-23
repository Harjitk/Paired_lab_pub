require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def test_drink_name()
    @drink = Drink.new("Beer", 3, 1)
    assert_equal("Beer", @drink.name)
end

def test_drink_price()
  @drink = Drink.new("Beer", 3, 1)
  assert_equal(3, @drink.price)
end

def test_drink_alcohol_level()
  @drink = Drink.new("Beer", 3, 1)
  assert_equal(1, @drink.alcohol_level)
end
end
