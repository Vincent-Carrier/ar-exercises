require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

class Exercise3
  def initialize
    @store3 = Store.find_by(id: 3)
    @store3.destroy
    puts Store.count
  end
end

Exercise3.new

