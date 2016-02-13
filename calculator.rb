require 'pry'

class Calculator

	def calculate(input)
		# check_operator(input)
		if input.include?(',')
			# string = input.split(',')
			# number = string.map { |x| x.to_i }
			number = convert_string_to_integers(input)
			calculate_sum(number)
		else
			input.to_i
		end
	end

	def check_operator(input)
		array = input.split(' ')
		a = []	
		array.each_index do |i|
			if array[i].include?('+')
				a = array[i-1].to_i + array[i+1].to_i
			end
		end
		return a
	end


	private

	def convert_string_to_integers(input)
		string = input.split(',')
		number = string.map { |x| x.to_i }	
	end

	def calculate_sum(number)
		number.inject { |sum, n| sum + n }
	end

	# def check_operator(input)
	# 	binding.pry
	# 	if input.include?('+')
	# 		string = input.split('+')
	# 		number = string.map { |x| x.to_i }	
	# 		number.inject { |sum, n| sum + n }
	# 	end
		
	# end

end