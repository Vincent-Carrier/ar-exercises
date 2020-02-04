require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Exercise6
  def initialize
    @store1 = Store.find(1)
    @store2 = Store.find(2)
    @store1.employees.create(first_name: "Khurram", last_name: "Virani",
                             hourly_rate: 60)
    @store1.employees.create(first_name: "Vincent", last_name: "Carrier",
                             hourly_rate: 120)
    @store2.employees.create(first_name: "Aaron", last_name: "Lang",
                             hourly_rate: 60)
    @store2.employees.create(first_name: "Mooty", last_name: "Marandola",
                             hourly_rate: 10)
  end
end

Exercise6.new
