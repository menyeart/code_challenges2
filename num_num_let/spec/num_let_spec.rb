require "./lib/num_let"
require "rspec"
require "pry"

RSpec.describe "NumLet" do
  it "exists" do
    num_let = NumNumLet.new

    expect(num_let).to be_an_instance_of(NumNumLet)
  end

  it "can sort, order and compute via the given params" do
    num_let = NumNumLet.new

    expect(num_let.compute("24z6 1x23 y369 89a 900b")).to eq(1299)
    expect(num_let.compute("24z6 1z23 y369 89z 900b")).to eq(1414)
    expect(num_let.compute("10a 90x 14b 78u 45a 7b 34y")).to eq(60)
  end
end