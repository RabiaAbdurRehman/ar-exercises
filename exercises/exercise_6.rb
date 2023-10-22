require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true


end


@store1 = Store.find_by(id: 1)  # Replace 1 with the correct store ID

# Check if @store1 is nil before using it
if @store1
  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Rabia", last_name: "Abdur", hourly_rate: 40)
  @store1.employees.create(first_name: "Sarah", last_name: "Tim", hourly_rate: 60)
else
  puts "Store with ID 1 not found."
end
@store2 = Store.find_by(id: 2)  # Replace 1 with the correct store ID

# Check if @store1 is nil before using it
if @store2
  @store2.employees.create(first_name: "Abc", last_name: "Virani", hourly_rate: 60)
  @store2.employees.create(first_name: "xyz", last_name: "Abdur", hourly_rate: 40)
  @store2.employees.create(first_name: "123", last_name: "Tim", hourly_rate: 60)
else
  puts "Store with ID 1 not found."
end
