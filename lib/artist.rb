require "pry"
require_relative "song.rb"
require_relative "genre.rb"

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

	# binding.pry

	def new_song(name, genre)
		Song.new(name, self, genre)

		# binding.pry
	end

	def songs
		Song.all.select { |song| song.artist == self  }	
	end

	def genres
		songs.map { |song| song.genre  }
	end
end