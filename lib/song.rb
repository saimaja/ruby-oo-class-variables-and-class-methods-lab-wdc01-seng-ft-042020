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
        @@artists << self.artist
        @@genres << self.genre
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
        hash_genres = {}
        @@genres.each do |genre|
            if hash_genres[genre]
                hash_genres[genre] +=1
            else
                hash_genres[genre] = 1
            end
        end
        hash_genres
    end

    def self.artist_count
        hash_artists = {}
        @@artists.each do |song|
            if hash_artists[song]
                hash_artists[song] +=1
            else
                hash_artists[song] = 1
            end
        end
        hash_artists
    end






end
