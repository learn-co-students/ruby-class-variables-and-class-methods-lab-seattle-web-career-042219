class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    hash = {}
    @@genres.each do |genre|
      if hash[genre] == nil
        hash[genre] = 0
      end
      hash[genre]+= 1
    end
    hash
  end

  def self.artist_count
    hash2 = {}
    @@artists.each do |name|
      if hash2[name] == nil
        hash2[name] = 0
      end
      hash2[name]+= 1
    end
    hash2
  end
end
