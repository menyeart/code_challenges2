require './lib/pascals_triangle'
require 'rspec'
require 'pry'

RSpec.describe "Pascals Triangle" do
 it "exsits" do
  triangle = PascalsTriangle.new

  expect(triangle).to be_an_instance_of(PascalsTriangle)

  end

  it "given a depth n, returns n top rows of Pascal's Triangle flattened into a one-dimensional list/array. " do
    triangle = PascalsTriangle.new
    
    expect(triangle.create_rows(1)).to eq([1])
    expect(triangle.create_rows(2)).to eq([1,1,1])
    expect(triangle.create_rows(4)).to eq([1,  1, 1,  1, 2, 1,  1, 3, 3, 1])
    expect(triangle.create_rows(6)).to eq([1,1,1,1,2,1,1,3,3,1,1,4,6,4,1,1,5,10,10,5,1])
    end
end