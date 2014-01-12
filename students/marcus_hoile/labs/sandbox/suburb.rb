puts "What suburb do you live in?"
suburb = gets.chomp

puts "Do you like it there, YES or NO?"
happy = gets.chomp.downcase

binding.pry

if happy == "yes"
	puts "lucky you"
else
	puts "Get the hell out of #{suburb} then."
end
