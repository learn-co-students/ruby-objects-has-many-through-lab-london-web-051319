class Artist

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
   @@all
 end

 def songs
   Song.all.select {|song_name| song_name.artist == self}
 end
 # #songs - has many songs


 def new_song(name, genre)
   Song.new(name, self, genre)
 end
 # # ##new_song - given a name and genre, creates a new song....
 #  ....associated with that artist.

def genres
  songs.map { |song| song.genre }
end

 end
