class Customer

  attr_reader :name, :wallet, :age, :drunkness

  def initialize(name, wallet, age, drunkness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness = drunkness
  end

  def buy_a_drink_from(pub)
    drink = pub.remove_drinks
    @wallet -= drink.price
    pub.till += drink.price
  end
end
