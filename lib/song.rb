class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
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
        @@genres.each{|elements|
            if !hash.key?(elements)
                hash[elements] = 1
            else 
                hash[elements] += 1
            end
        }
         hash
    end

    def self.artist_count
        hash = {}
        @@artists.each{|elements|
            if !hash.key?(elements)
                hash[elements] = 1
            else 
                hash[elements] += 1
            end
        }
         hash
    end
end