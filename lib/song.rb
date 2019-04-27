require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre

  end

  def self.genres
    @new_genres_ary = @@genres.uniq
  end

  def self.artists
    @new_artists_ary = @@artists.uniq
  end

  def self.count
      @@count
  end

  def self.artist_count

    @@artists.each {| artist_name |
      count = 1
      if @@artist_count.has_key?(artist_name)
        count += 1
        @@artist_count[artist_name]=count
      else
        count = 1
        @@artist_count[artist_name]=count
      end
    }
    @@artist_count

  end

  def self.genre_count

    @@genres.each {| genre_name |
      count = 1
      if @@genre_count.has_key?(genre_name)
        count += 1
        @@genre_count[genre_name]=count
      else
        count = 1
        @@genre_count[genre_name]=count
      end
    }
    @@genre_count

  end

end
