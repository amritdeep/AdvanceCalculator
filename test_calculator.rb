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
	
end