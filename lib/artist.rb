class Artist
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def new_song(title, genre)
		song = Song.new(title, self, genre)
	end

	def songs
		Song.all.select{|song| song.artist == self}
	end

	def genres
		songs.map{|song| song.genre}.uniq
	end

	def self.all
		@@all
	end
end