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

	def check_multiple_operator(input)
		new_array = []
		array = input.split(' ')
		if array.count >= 3
			array.each_index do |i|
				# del_list = [array[i], array[i+1], array[i+2]]
				del_list = [array[0], array[1], array[2]]
				a = del_list[0].to_i + del_list[2].to_i if del_list.include?('+')
				a = del_list[0].to_i - del_list[2].to_i if del_list.include?('-')
				a = del_list[0].to_i * del_list[2].to_i if del_list.include?('*')
				a = del_list[0].to_i / del_list[2].to_i if del_list.include?('/')
				a = a.to_s
				new_array.push(a)

				del_list.each do |del|
					array.delete_at(array.index(del))
				end

				array.unshift(new_array[0])
				del_list.clear
				new_array.clear
			end
			array.first.to_i	
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