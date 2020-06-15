require "pry"

class Genre
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    genreArray = []
    Song.all.each do |song|
      if song.genre == self
        genreArray << song.artist
      end
    end
    genreArray
  end

end
