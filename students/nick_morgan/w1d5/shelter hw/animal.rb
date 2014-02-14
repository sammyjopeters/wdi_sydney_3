# Define Animal as a class
Animal_list = []

class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :gender, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, gender = "male", species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
    "#{name}, age = #{age}, #{gender}, #{species}, toys = #{toys}"
  end

  def animal_list(animal)
    Animal_list << animal
  end

end

# JoeMonkey = Animal.new("Joe", 3, "male", "monkey", ["bananas", "ball"])

# puts JoeMonkey