require "./notation"
require 'pry'

RSpec.describe "AA Num Notation" do
  xit "takes small integers and outputs 'AA' number notation" do
    note = Notation.new

    expect(note.convert(0)).to eq("0")
    expect(note.convert(1)).to eq("1")
    expect(note.convert(-1)).to eq("-1")
  end

  xit "takes small floats and outputs 'AA' number notation" do
    note = Notation.new

    expect(note.convert(0.25)).to eq("0.25")
    expect(note.convert(0.009)).to eq("0")
    expect(note.convert(-0.9999)).to eq("-0.99")
    expect(note.convert(1.000000001)).to eq("1")
    expect(note.convert(-740.069)).to eq("-740")
  end

  xit "takes numbers with absolute values greater than 999 and up to 1 Trillion and outputs 'AA' number notation" do
    note = Notation.new

    expect(note.convert(1000)).to eq("1K")
    expect(note.convert(1234)).to eq("1.23K")
    expect(note.convert(-4002)).to eq("-4K")
    expect(note.convert(5809)).to eq("5.8K")
    expect(note.convert(100000)).to eq("100K")
    expect(note.convert(123456789)).to eq("123M")
    expect(note.convert(1234567890)).to eq("1.23B")
    expect(note.convert(1234567890000)).to eq("1.23T")
    expect(note.convert(999999999999999)).to eq("999T")
  end

  xit "takes numbers with absolute values over 1000 Trillion and outputs 'AA' number notation" do
    note = Notation.new

    expect(note.convert(1000000000000000)).to eq("1aa")
    expect(note.convert(1234567890000000000)).to eq("1.23ab")
  end

  it "takes numbers with really large absolute values and outputs 'AA' number notation" do
    note = Notation.new

    expect(note.convert(1.23456789e+90)).to eq("unkown")
    expect(note.convert(4.984071690388805e+92)).to eq("unknown")
  end
end