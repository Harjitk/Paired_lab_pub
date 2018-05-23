class Pub
  attr_accessor :name, :till, :drink_stock
  def initialize(name, till)
    @name = name
    @till = till
    @drink_stock = []
  end

  def drink_count
    @drink_stock.count
  end

  def add_drinks(drink)
    @drink_stock << drink
  end

  def remove_drinks()
    drink = drink_stock.pop

  end
end
