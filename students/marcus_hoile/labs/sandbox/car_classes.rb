# cars 
class Car

	attr_accessor :max_speed, :color
	def initialize(speed=180, color="blue")
		@max_speed = speed
		@color = color
	end
end

class Make < Car
	attr_accessor :model
end

class HotRod < Car
	def burnout
		puts "Vroooom Vrooom!!!"
	end
end

falcon = Make.new(180, "blue")
falcon.model = "Falcon"
p falcon



mycar = HotRod.new(280, "red")

p mycar
mycar

# if you have an inherited 