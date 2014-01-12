puts "what is 2 to the power of 16?"
answer = gets.chomp.to_i

# no else statement, prompts user for answer until it is correct
while answer != 2 ** 16
 puts "Incorrect, try again"
 answer = gets.chomp.to_i
end

# same result but puts the while statement at the end
begin
	p "What is 2 to the 16 th?"
	answer = gets.chomp.to_i
end while answer != 2 ** 16
