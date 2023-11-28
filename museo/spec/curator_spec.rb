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

  it "can add photographs to its collection" do
    curator = Curator.new
    photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })
    photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"    
    })

    expect(curator.photographs).to eq([])

    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)

    expect(curator.photographs).to eq([photo_1, photo_2])
  end
end