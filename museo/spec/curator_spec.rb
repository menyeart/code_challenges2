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

    photo_3 = Photograph.new({
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

  it "has a list of artists and artists can be added to the list" do
    curator = Curator.new
    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })  
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })   
    
    expect(curator.artists).to eq([])

    curator.add_artist(artist_1)

    expect(curator.artists).to eq([artist_1])

    curator.add_artist(artist_2)

    expect(curator.artists).to eq([artist_1, artist_2])
  end
end