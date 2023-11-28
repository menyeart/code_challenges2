require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe "Curator" do
  it "exists" do
    curator = Curator.new
    
    expect(curator).to be_an_instance_of(Curator)
  end

  it "has a list of photographs" do
    curator = Curator.new
    
    expect(curator.photographs).to eq([])
  end


end