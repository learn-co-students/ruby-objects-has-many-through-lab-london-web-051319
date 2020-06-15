class Genre

  attr_accessor :name
  # #name - has a name

  @@all = []
  # #.all - knows about all genre instances
  # a class method .all that lists each genre in the class variable.

  def initialize(name) # #name - has a name
    @name = name       # #name - has a name
    @@all << self
  end

  def self.all
   @@all
 end
 # #.all - knows about all genre instances


 def songs
    Song.all.select { |songs| songs.genre == self }
  end
  # #songs - has many songs.
  #The Genre class needs an instance method, #songs, that....
  #...iterates through all songs and finds the songs...
  #...that belong to that genre.

  def artists
    songs.map { |song| song.artist }
  end

end
