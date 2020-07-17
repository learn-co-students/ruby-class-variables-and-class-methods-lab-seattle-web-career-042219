class Song
  attr_accessor :name, :artist, :genre

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    helper(@@genres)
  end

  def self.artist_count
    helper(@@artists)
  end

  def self.helper(array)
    new_hash ={}
    array.each do |item|
      if !new_hash.key?(item)
        new_hash[item] = 1
      else
        new_hash[item] += 1
      end
    end
    new_hash
  end

end
