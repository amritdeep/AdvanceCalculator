require_relative 'calculator'
require 'rspec'
require 'pry'

describe Calculator do
	let(:calculator) { Calculator.new }

	it "should returns 0 for an empty  string" do
		result = calculator.calculate("")	
		expect(result).to eq(0)
	end

	it "should returns 1 for a string containing 1" do
		result = calculator.calculate("1")
		expect(result).to eq(1)
	end
	
end