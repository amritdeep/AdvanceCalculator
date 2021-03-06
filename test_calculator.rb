require_relative 'calculator'
require 'rspec'

describe Calculator do
	let(:cal) { Calculator.new }

	it "should returns 0 for an empty  string" do
		result = cal.calculate("")	
		expect(result).to eq(0)
	end

	it "should returns 1 for a string containing 1" do
		result = cal.calculate("1")
		expect(result).to eq(1)
	end

	# Handle Post operator
	it "should returns error for 1 + " do
		result = cal.calculate("1 +")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end

	it "should returns error for 1 + " do
		result = cal.calculate("1 -")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end
	
	it "should returns error for 1 + " do
		result = cal.calculate("1 *")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end		

	it "should returns error for 1 + " do
		result = cal.calculate("1 /")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end

	# Handle pre operator
	it "should returns error for + 1 " do
		result = cal.calculate("+ 1")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end	

	it "should returns error for - 1" do
		result = cal.calculate("- 1")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end

	it "should returns error for * 1" do
		result = cal.calculate("* 1")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end

	it "should returns error for / 1" do
		result = cal.calculate("/ 1")
		expect(result).to eql(nil)
		expect { print('Check you number and Operator').to output.to_stdout }
	end

	it "should check for operator like +" do
		# result = cal.check_operator("1 + 2")
		result = cal.calculate("1 + 2")
		expect(result).to eql(3)
	end

	it "should add two number like 2 + 5" do
		result = cal.calculate("2 + 5")
		expect(result).to eql(7)
	end

	it "should subtract two number like 5 - 3" do
		result = cal.calculate("5 - 3")
		expect(result).to eql(2)
	end

	it "should subtract two number like 2 - 6" do
		result = cal.calculate("2 - 6")
		expect(result).to eql(-4)
	end

	it "should multiple two number like 2 * 2" do
		result = cal.calculate("2 * 2")
		expect(result).to eql(4)
	end

	it "should divide two number like 9 / 3 " do
		result = cal.calculate("9 / 3")
		expect(result).to eql(3)
	end

	it "should check for double operator like +, -" do
		# result = cal.calculate("5 + 2 - 1")
		result = cal.calculate("5 + 2 - 1")
		expect(result).to eql(6)
	end

	it "should check for double operator like *, -" do
		result = cal.calculate("5 * 2 - 4")
		expect(result).to eql(6)
	end

	it "should check for double operator like /, +" do
		result = cal.calculate("8 / 2 + 3")
		expect(result).to eql(7)
	end
	
end