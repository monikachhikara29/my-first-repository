require_relative "../lib/bike"

puts "Please enter details:"
str = gets
b = str.gsub('"', "") 
str_arr = b.match(/([a-z A-z]+) ([0-9]*) ([a-z A-Z]*) ([0-9]*)/).captures
name = str_arr[0]
price = str_arr[1].chomp.to_i
dealer_name = str_arr[2]
percentage_price_increase = str_arr[3].chomp.to_f
result = Bike.new(name, price, dealer_name)
puts result
result.price_increase(percentage_price_increase)
puts "After #{ percentage_price_increase } percent hike in price:"
puts result