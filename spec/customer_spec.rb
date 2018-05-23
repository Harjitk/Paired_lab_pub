require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("John", 10, 21, 0)
    @pub = Pub.new("Bloc", 0)
    @drink = Drink.new("Beer", 3, 1)
  end

  def test_customer_name
    assert_equal("John", @customer.name)
  end

  def test_customer_has_money_in_wallet
    assert_equal(10, @customer.wallet)
  end

  def test_customer_age
    assert_equal(21, @customer.age)
  end

  def test_customer_drunkness
    assert_equal(0, @customer.drunkness)
  end

    def test_customer_buy_a_drink
      @pub.add_drinks(@drink)
      @customer.buy_a_drink_from(@pub)
      assert_equal(0, @pub.drink_count)
    end

    def test_reduce_money_from_wallet
        @pub.add_drinks(@drink)
        @customer.buy_a_drink_from(@pub)
      assert_equal(7, @customer.wallet)
      assert_equal(3, @pub.till)
  end


end
