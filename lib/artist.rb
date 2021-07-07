# frozen_string_literal: true

require_relative 'song.rb'
require_relative 'genre.rb'

class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song_name| song_name.artist == self }
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.map(&:genre)
  end
end
