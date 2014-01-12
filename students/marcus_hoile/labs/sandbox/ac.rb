puts "What is the current temp?"
current_temp = gets.chomp.to_i

puts "Is the AC working, true or false?"
ac = gets.chomp

puts "What temp would you like it to be?"
new_temp = gets.chomp.to_i

if (ac == "true") && (current_temp > new_temp)
	puts "Turn on the ac please"
elsif (ac == "false") && (current_temp > new_temp)
	puts "Fix the AC now!"
elsif (ac == "false") && (current_temp < new_temp)
	puts "Fix the AC whenever dude"
else
	puts "The AC can only cool you down, dude"
end