class Vehicle

  def initialize(name, price)
    @name = name
    @price = price
  end
 
  def to_s
    "Bike name: #{ @name } \nBike price: #{ @price }"
  end
end

