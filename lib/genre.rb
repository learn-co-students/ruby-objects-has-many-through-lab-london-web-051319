require "pry"

class Genre

   attr_accessor :name 

   @@all = []

   def initialize(name)
      @name = name
      @@all << self
   end

   def songs
      gnr = []
      Song.all.each do |song|
         song == self ? gnr << song : nil
      end
   end
   
   def artists
      artz = []
      Song.all.each do |song|
         artz << song.artist
      end
      artz
   end

   def self.all
      @@all
   end

end