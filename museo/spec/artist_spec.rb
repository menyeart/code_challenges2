require './lib/photograph'
require './lib/artist'

RSpec.describe "Artist" do
  it "exists" do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }

    ansel = Artist.new(attributes)
    
    expect(ansel).to be_an_instance_of(Artist)
  end

  it "has attributes" do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }

    ansel = Artist.new(attributes)
    
    expect(ansel.id).to eq("2")
    expect(ansel.name).to eq("Ansel Adams")
    expect(ansel.born).to eq("1902")
    expect(ansel.died).to eq("1984")
    expect(ansel.country).to eq("United States")
  end


end
