class Artist
  @@all = []
  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def self.all
    @@all
  end
  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    @songs << song
    song
  end
  def genres
    @songs.map {|song| song.genre}
  end
end
