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

  def photos_taken_between(start_year, end_year)
    @photographs.find_all { |photo| photo.year.between?(start_year, end_year)}
  end

  def get_artists_age_and_other_photos(photo)
    year = photo.year.to_i
    artist = @artists.find { |artist| artist.id == photo.artist_id}
    artist_age = year - artist.born.to_i
    other_photos = @photographs.find_all do |photog|
      photog.year == photo.year && photog.artist_id == photo.artist_id && photo.id != photog.id
    end
    other_photos = other_photos.map { |photo| photo.name }

    other_photos == [] ? other_photos = "none" : other_photos = other_photos.join

    "#{artist.name} was #{artist_age}yrs old when #{photo.name} was taken. Other photos from that year include: #{other_photos}."
  end
end