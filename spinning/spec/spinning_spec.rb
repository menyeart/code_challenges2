require './lib/spinning'
require 'rspec'
require 'pry'

RSpec.describe "Spinning" do
  it "exists" do
    spinning = Spinning.new

    expect(spinning).to be_an_instance_of(Spinning)
  end

  it "takes a string of one or more words and returns the same string with all words with more than 4 chars reversed" do
    spinning = Spinning.new

    expect(spinning.reverse_words("Hey fellow warriors")).to eq("Hey wollef sroirraw")
    expect(spinning.reverse_words("This is a test")).to eq("This is a test")
    expect(spinning.reverse_words("This is another test")).to eq("This is rehtona test")
  end

end