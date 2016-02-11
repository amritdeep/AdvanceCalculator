require 'pry'

class Calculator

	def calculate(input)
		if input.include?(',')
			string = input.split(',')
			number = string.map { |x| x.to_i }
			number.inject { |sum, n| sum + n }
		else
			input.to_i
		end
	end

end