require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_annual_revenue = Store.all.sum("annual_revenue")
puts "total annual revenue: $#{@total_annual_revenue}"

@average_annual_revenue = Store.all.sum("annual_revenue") / Store.count("name")
puts "average annual revenue: $#{@average_annual_revenue}"

@num_stores = Store.where("annual_revenue >= ?", 1000000).count("name")
puts "Number of stores that are generating $1M or more in annual sales: #{@num_stores}"