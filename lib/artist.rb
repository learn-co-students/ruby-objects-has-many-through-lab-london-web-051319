require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    #binding.pry
  end

  def songs
    Song.all.select { |inst| inst.artist == self }
  end

  def genres
    songs.map { |inst| inst.genre }
  end

  def self.all
    @@all
  end
end


##
