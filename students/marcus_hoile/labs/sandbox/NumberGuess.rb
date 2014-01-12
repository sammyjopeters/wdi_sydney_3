# Display a prompt for the user and capture their input
puts "I am thinking of an integer between 0 and 10... what number am i thinking of?"
answer = gets.chomp.to_i

# generate random number to a variable
secret = rand(10)

# while loop runs until guessed correctly
while answer != secret
	puts "Incorrect, guess again"
	answer = gets.chomp.to_i
end

puts "That's it! How'd you know?"