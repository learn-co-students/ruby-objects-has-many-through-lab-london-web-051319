class Genre
  attr_accessor :name, :songs, :artist
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.map {|song| song.artist}
  end
end
