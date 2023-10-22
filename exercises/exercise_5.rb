require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire commpany is #{total_revenue}"

average = Store.average(:annual_revenue)
puts "average of annual revenue of the company is #{average}"

store_with_condition = Store.where('annual_revenue >= ?', 1000000).count
puts "Store with conditions are #{store_with_condition}"
