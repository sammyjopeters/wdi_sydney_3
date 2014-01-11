class Shelter
	def initialize
		@clients = []
		@animals = []
	end

  def to_s
    puts "In the shelder there are:"
    @animals.each { |animal| puts animal }
    puts "and the following clients:"
    @clients.each { |client| puts animal }
  end
end