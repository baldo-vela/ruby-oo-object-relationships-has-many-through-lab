class Song
    # The Song class needs a class variable @@all that begins as an empty array.
    attr_reader :name, :artist, :genre

    @@all = []
    # The Song class needs a class method .all that lists each song in the class variable.

    def self.all
        @@all
    end

    def save
        @@all << self
    end
    
    def initialize(name, artist, genre)
        # A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
        # madonna = Artist.new("Madonna")
        # pop = Genre.new("pop")

        # into_the_groove = Song.new("Into the  Groove", madonna, pop) 
        @name = name
        @artist = artist
        @genre = genre
        save
    end
end
