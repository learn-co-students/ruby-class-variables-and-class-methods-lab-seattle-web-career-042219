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

        @@genres << genre
        @@artists << artist
    end

    def self.count
        return @@count
    end

    def self.genres
        return @@genres.uniq
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) {|total, i| total[i] += 1 ;total}
    end
end