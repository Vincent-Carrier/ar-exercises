require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter store name:"
name = gets.chomp
store = Store.create(name: name)
begin
  store.save!
rescue ActiveRecord::RecordInvalid => invalid
  puts invalid.record.errors
end
