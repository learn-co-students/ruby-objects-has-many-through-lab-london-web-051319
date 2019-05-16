class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.genre
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}.uniq
  end

  def self.all
    @@all
  end
end
