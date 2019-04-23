class Song
  attr_reader :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counted_genres = {}
    @@genres.each do |current_genre|
      counted_genres[current_genre] = 0 if counted_genres[current_genre].nil?
      counted_genres[current_genre] += 1
    end
    counted_genres
  end

  def self.artist_count
    counted_artists = {}
    @@artists.each do |current_artist|
      counted_artists[current_artist] = 0 if counted_artists[current_artist].nil?
      counted_artists[current_artist] += 1
    end
    counted_artists
  end

end
