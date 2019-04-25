require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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
    @@genres.each do |item|
      if !hash.include?(item)
        hash[item] = 1
      else
        hash[item] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |item|
      if !hash.include?(item)
        hash[item] = 1
      else
        hash[item] += 1
      end
    end
    hash
  end

end
