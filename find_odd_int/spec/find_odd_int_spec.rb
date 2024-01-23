require './lib/find_odd_int'
require 'rspec'
require 'pry'

RSpec.describe "Find Odd Int" do
  it "exists" do
    odd_int = OddInt.new

    expect(odd_int).to be_an_instance_of(OddInt)
  end

  it "it can find the integer that appears an odd number of times out of a list of integers" do
    odd_int = OddInt.new



    expect(odd_int.find_odd_int([7])).to eq(7)
    expect(odd_int.find_odd_int([0])).to eq(0)
    expect(odd_int.find_odd_int([1,1,2])).to eq(2)
    expect(odd_int.find_odd_int([0,1,0,1,0])).to eq(0)
    expect(odd_int.find_odd_int([1,2,2,3,3,3,4,3,3,3,2,2,1])).to eq(4)
  end
end