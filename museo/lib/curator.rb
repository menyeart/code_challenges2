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

  def artists_with_multiple_photos
    artists = []
    all_artists_and_photos.each do |artist, photo|
      artists << artist if photo.count > 1
    end
    artists
  end

  def photos_from(country)
    ids = artist_ids_by_country(country)
    photos = []
    @photographs.each do |photo| 
      photos << photo.name if ids.include?(photo.artist_id)
    end
    photos
  end

  def artist_ids_by_country(country)
    @artists.find_all{ |artist| artist.country == country}.map { |artist| artist.id}
  end

end