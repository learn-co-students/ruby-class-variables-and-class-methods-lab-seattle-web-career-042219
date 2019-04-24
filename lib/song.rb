class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@genres << genre
    @@count += 1
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
  genre_hash = Hash[@@genres.collect { |genre| [genre, @@genres.count(genre)] } ]
  genre_hash
  end

def self.artist_count
  artist_hash = Hash[@@artists.collect { |artist| [artist, @@artists.count(artist)] } ]
  artist_hash
  end
end
