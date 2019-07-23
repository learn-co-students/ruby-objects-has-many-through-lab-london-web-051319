require "pry"

class Artist

   attr_accessor :name, :genre

   @@all = []

   def initialize(name)
      @name = name
      @genre = genre
      @@all << self
   end
   
   def new_song(name, genre)
      Song.new(name, self, genre)
   end

   def songs
      sngs = []
      Song.all.each do |song|
         song.artist == self ? sngs << song : nil
      end
   end

   def genres
      rap_songs = []
      Song.all.each do |song|
         rap_songs << song.genre
      end
      # binding.pry
      rap_songs
   end

   def self.all
      @@all
   end

end