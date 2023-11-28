class Curator
  attr_reader :photographs, :artists
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find { |artist| artist.id == id}
  end

  def all_artists_and_photos
    artists_and_photos = {}
    @artists.each { |artist| artists_and_photos[artist.name] = get_photos(artist) }
    artists_and_photos
  end

  def get_photos(artist)
    @photographs.find_all { |photograph| artist.id == photograph.artist_id}.map { |photo| photo.name}
  end
end