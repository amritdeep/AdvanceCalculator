require_relative 'calculator'
require 'rspec'
require 'pry'

describe Calculator do
	let(:calculator) { Calculator.new }

	it "returns 0 for an empty  string" do
		result = calculator.calculate("")
		expect(result).to eq(0)
	end
	
end