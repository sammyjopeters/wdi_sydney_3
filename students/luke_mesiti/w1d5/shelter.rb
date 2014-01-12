require './animal-prompt'
require './client'

class Shelter

	attr_accessor :name, :animal, :client

	def initialize(animal, client)
		@animal = animal
		@client = client
	end

	def to_s
		""




end