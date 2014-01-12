# error exceptions

# divide by zero
# attempt to divide a number by zero
# rescue the error

# class MyError < RuntimeError; end

# raise MyError, "Noooooo!"


# def divide
# 	begin
# 		puts "give me a number"
# 		x = gets.chomp.to_i
# 		puts "what number would you like to divide by?"
# 		y = gets.chomp.to_i

# 		puts x / y

# 	rescue
# 		puts "Whoa, there tiger. Something is wrong"
# 	end
# end

# divide

# def something
# 	begin
# 		puts "This is working"
# 		fudge
# 		puts "this is not working"

# 	rescue
# 		puts "Undefined variable"
# 	end
# end
# something

for i in -5..5
	begin
	  puts 10 / i
	rescue 
		next 
	end
end