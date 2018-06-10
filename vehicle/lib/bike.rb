require_relative "../lib/vehicle"

class Bike < Vehicle
  attr_accessor :dealer_name

  def initialize(name, price, dealer_name)
    super(name,price)
    @dealer_name = dealer_name
  end

  def price_increase(percentage_price_increase)
    @price = @price + ( @price * percentage_price_increase / 100 )
  end

  def to_s
    super + " \nBike Dealer: #{ @dealer_name }"
  end
end