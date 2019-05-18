class Genre
   attr_accessor :name, :songs
   @@all = []
   def initialize(name, song)
     @name = name
     @songs << self
   end



   def self.all
     @@all
   end
end
