class Animal
	def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
	end

	def to_s
    puts "#{name} is a #{age} years old #{gender} #{species} that loves #{@toys}"
  end
end