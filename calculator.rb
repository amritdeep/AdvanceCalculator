require 'pry'

class Calculator

	def calculate(input)
		if input.include?(',')
			# string = input.split(',')
			# number = string.map { |x| x.to_i }
			number = convert_string_to_integers(input)
			calculate_sum(number)
		else
			input.to_i
		end
	end


	private

	def convert_string_to_integers(input)
		string = input.split(',')
		number = string.map { |x| x.to_i }	
	end

	def calculate_sum(number)
		number.inject { |sum, n| sum + n }
	end

end