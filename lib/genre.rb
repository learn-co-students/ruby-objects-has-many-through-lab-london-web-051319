class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |inst| inst.genre == self }
  end

  def artists
    genres_songs = songs
    genres_songs.map { |inst| inst.artist }
  end

  def self.all
    @@all
  end

end
