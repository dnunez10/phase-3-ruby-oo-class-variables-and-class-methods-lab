class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.genres
        unq = []
        @@genres.each do |genre|
            if !(unq.include?(genre))
                unq.push(genre)
            end
        end
        unq
    end

    def self.artists
        unq = []
        @@artists.each do |artist|
            if !(unq.include?(artist))
                unq.push(artist)
            end
        end
        unq
    end


    def self.genre_count
        a = {}
        @@genres.each do |genre|
            if a.include?(genre)
                a[genre] += 1
            else
                a[genre] = 1
            end
        end
        a
    end

    def self.artist_count
        b = {}
        @@artists.each do |artist|
            if b.include?(artist)
                b[artist] += 1
            else
                b[artist] = 1
            end
        end
        b
    end

end