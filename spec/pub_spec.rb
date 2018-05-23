require("minitest/autorun")
require("minitest/rg")


require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Bloc", 0)
    @drink1 = Drink.new("Beer", 3, 1)
    @drink2 = Drink.new("Wine", 5, 1)
    @drink3 = Drink.new("Vodka", 4, 1)
    @customer = Customer.new("John", 10, 21)
  end

  def test_pub_name
    assert_equal("Bloc", @pub.name)
  end

  def test_till_count
    assert_equal(0, @pub.till)
  end

  def test_drink_count
    assert_equal(0, @pub.drink_count)
  end

    def test_add_drinks
      @pub.add_drinks(@drink1)
      @pub.add_drinks(@drink2)
      @pub.add_drinks(@drink3)
      assert_equal(3, @pub.drink_count)
  end

  def test_remove_drinks
      @pub.add_drinks(@drink1)
      @pub.add_drinks(@drink2)
      @pub.add_drinks(@drink3)
      drink = @pub.remove_drinks
      assert_equal(2, @pub.drink_count)

  end

  def test_check_age
    assert_equal(21, @customer.age)
  end


end
