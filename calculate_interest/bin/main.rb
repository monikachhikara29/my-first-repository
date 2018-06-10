require_relative "../lib/interest"

puts "Enter principal"
principal = gets.chomp.to_i
puts "Enter Time"
time = gets.chomp.to_f
interest = Interest.new(principal, time)
puts interest.simple_interest
puts interest.compound_interest
puts interest.difference
