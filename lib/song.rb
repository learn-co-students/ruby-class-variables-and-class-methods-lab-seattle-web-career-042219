require "pry"

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
  #everything above this comment is working
  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    art_count = {}
    @@artists.each do |artist|
      if art_count[artist]
        art_count[artist] += 1
      else
        art_count[artist] = 1
      end
    end
    art_count
  end

  def self.genre_count
    gen_count = {}
    @@genres.each do |genre|
      if gen_count[genre]
        gen_count[genre] += 1
      else
        gen_count[genre] = 1
      end
    end
    gen_count
  end

end
