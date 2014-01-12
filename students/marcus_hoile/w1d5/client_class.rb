class Client
	attr_accessor :name, :pets
	def initialize(name)
		@name = name
		@pets = []
	end

	def to_s
		"#{name}"
	end

end