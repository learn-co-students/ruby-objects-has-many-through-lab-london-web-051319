require_relative "./genre.rb"
require_relative "./song.rb"
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name #artist name
    @@all << self
  end

  def new_song(name, genre) #genre name
    Genre.all.select do |genre|
      song.genre == self
  end

  def songs

  end

  def genre

  end

  def self.all
    @@all
  end

end
