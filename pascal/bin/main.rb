require_relative "../lib/pascal_triangle"

puts "Enter the value of n"

num = gets.chomp.to_i

obj = PascalTriangle.new
obj.pascal_triangle(num)
