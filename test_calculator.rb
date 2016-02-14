require_relative 'calculator'
require 'rspec'
require 'pry'

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

	it "should returns sum of number containg '1, 2, 3'" do
		result = cal.calculate("1, 2, 3")
		expect(result).to eq(6)
	end

	it "should returns sum of number containg more than 5 number" do
		result = cal.calculate("1, 2, 3, 4, 5, 6, 7")
		expect(result).to eq(28)
	end

	it "should check for operator like +" do
		# result = cal.check_operator("1 + 2")
		result = cal.check_multiple_operator("1 + 2")
		expect(result).to eql(3)
	end

	it "should add two number like 2 + 5" do
		result = cal.check_multiple_operator("2 + 5")
		expect(result).to eql(7)
	end

	it "should subtract two number like 5 - 3" do
		result = cal.check_multiple_operator("5 - 3")
		expect(result).to eql(2)
	end

	it "should subtract two number like 2 - 6" do
		result = cal.check_multiple_operator("2 - 6")
		expect(result).to eql(-4)
	end

	it "should check for double operator like +, -" do
		# result = cal.calculate("5 + 2 - 1")
		result = cal.check_multiple_operator("5 + 2 - 1")
		expect(result).to eql(6)
	end
	
end