class Interest
@@rate = 10.0/100
  def initialize(principal, time)
    @principal = principal
    @time = time
  end
  def simple_interest
    @amount_simple_interest = @principal * @time * @@rate + @principal
  end
  def compound_interest
    @amount_compound_interest = @principal * (1+@@rate)**@time
  end
  def difference
    @amount_compound_interest - @amount_simple_interest
  end
end
