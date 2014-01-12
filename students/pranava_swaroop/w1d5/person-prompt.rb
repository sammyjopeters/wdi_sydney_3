# Define Person as a class
class Person

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :no_pets, :gender,:no_child

  # Used when creating a new animal.
  #   Example:
  #       Person.new('Beth', 30, 'female', 3)
  def initialize(name, age, gender, no_child)
    @name = name
    @age = age
    @gender = gender
    @no_child = no_child
    @pets = {}
  end


  def pets=(pet)
    @pets << pet
  end

  def pets
    @pets
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
      "#{name} is a #{age} year old #{gender} with #{no_child} kids and #{@pets.size} pets"
  end
end