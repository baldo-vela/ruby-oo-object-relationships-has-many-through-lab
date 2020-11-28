class Genre
    # The Genre class needs a class variable @@all that begins as an empty array.
    attr_accessor :genre, :name
    @@all =[]
    
    # The Genre class needs a class method .all that lists each genre in the class variable.
    def self.all
        @@all
    end
    
    def initialize(name)
        # A genre should be initialized with a name and be saved in the @@all array.
        @name = name
        @@all <<self
    end

    # The Genre class needs an instance method #songs, that iterates through all songs and finds the songs that belong to that genre.
    def songs
        Song.all.select { |song| song.genre == self}

    end
    
    # The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
    def artists
        artists_in_genre = []
        Song.all.each do |song| 
            if song.genre == self
                artists_in_genre << song.artist
            end
        end
        return artists_in_genre
    end

end
