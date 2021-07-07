require_relative "./artist.rb"
require_relative "./song.rb"
class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs

  end

  def artists

  end

  def self.all
    @@all
  end

end
