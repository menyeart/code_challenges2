require './lib/challenges'
require 'rspec'
require 'pry'

RSpec.describe "Quick codewars challenges" do
  it "exists" do
    challenge =  Challenge.new

    expect(challenge).to be_an_instance_of(Challenge)
  end

  it "#hi_lo_sum" do
    challenge =  Challenge.new

    expect(challenge.sum_without_min_max(nil)).to eq(0)
    expect(challenge.sum_without_min_max([])).to eq(0)
    expect(challenge.sum_without_min_max([3])).to eq(0)
    expect(challenge.sum_without_min_max([-3])).to eq(0)
    expect(challenge.sum_without_min_max([3,5])).to eq(0)
    expect(challenge.sum_without_min_max([-3,-5])).to eq(0)
    expect(challenge.sum_without_min_max([6, 2, 1, 8, 10])).to eq(16)
    expect(challenge.sum_without_min_max([-6, -20, -1, -10, -12])).to eq(-28)
  
  end



end