class Artist
   attr_accessor :name :songs
   @@all = []
   def initialize(name)
     @name = name
     @songs = songs
   end

   def self.all
     @@all
   end

   def new_song
     Song.all.select do |song|
       song.artist == self
     end
   end

   def songs
     @songs
   end



end
