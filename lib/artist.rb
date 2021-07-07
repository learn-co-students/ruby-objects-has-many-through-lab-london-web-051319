# require_relative "song.rb"
# require_relative "genre.rb"
require "pry"

class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end 

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        @songs << new_song
        new_song
    end

    #binding.pry

    def genres
        @songs.map do |song|
           song.genre
        end
    end

end