# run_calculator.rb
require_relative 'string_manipulation'

puts "Enter a string of comma-separated numbers (or leave empty):"
input = gets.chomp  

result = StringManipulation.add(input)  
puts "The result is: #{result}" 
