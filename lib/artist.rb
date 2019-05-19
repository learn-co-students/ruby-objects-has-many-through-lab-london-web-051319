class Artist

  attr_accessor :name, :genre, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artist
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def self.all
    @@all
  end

  def genres
    @songs.collect do |song|
    song.genre
    end
  end
  # def songs
  #   Song.all.select do |song|
  #     song.artist == self
  #   end
  # end

  end
