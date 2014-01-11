class Client
  attr_reader :name, :children_num, :age, :pets_num

	def initialize()
		create()
	end

  def create()
    Console.s
    @name = Console.prompt 'What\'s the client name?'
    @age = Console.prompt "How old is #{name}?"
    @children_num = Console.prompt "How many childern has #{name}?"
    @pets_num = Console.prompt "How many pets has #{name}?"
    Console.sn
  end

  def to_s
    "#{name}, is #{age}, has #{children_num} children and #{pets_num} animals"
  end
end