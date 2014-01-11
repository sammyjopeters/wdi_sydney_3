class Client
	def initialize(name, children_num, age, pets_num)
		@name = name
		@children_num = children_num
		@age = age
		@pets_num = pets_num
	end

  def to_s
    puts "#{name}, is #{age}, she has #{children_num} children and #{pets_num} animals"
  end
end