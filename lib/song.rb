require 'pry'

class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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
     hash = {}
     @@genres.uniq.map do |genre|
       value = @@genres.select {|type| type == genre}.length
       hash[genre] = value
     end
     hash
   end

   def self.artist_count
     hash = {}
     @@artists.uniq.map do |artist|
       value = @@artists.select {|name| name == artist}. length
       hash[artist] = value
     end
   hash
  end

end
