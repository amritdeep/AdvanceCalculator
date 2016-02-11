require 'pry'

class Calculator

	def calculate(input)
		string = input.split(',')
		number = string.map { |x| x.to_i }
		number.inject { |sum, n| sum + n }
	end

end