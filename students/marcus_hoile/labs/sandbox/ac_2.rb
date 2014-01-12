# ask user for current temp
puts "What is the current temp?"
current_temp = gets.chomp.to_i

# check for ac working, y will equal true
puts "Is the AC working, Y or N?"
ac_working = gets.chomp.downcase == "y"

# capture the desired temp from user
puts "What temp would you like it to be?"
new_temp = gets.chomp.to_i

# put condition for turning on ac in a variable
turn_ac_on = (current_temp > new_temp)


# voila the conditional statements reduced from 9 to 7 lines and easier to read
if ac_working && turn_ac_on
	puts "Turn on the ac please"
# if both are false this will run
elsif ac_working == false
	puts "fix the AC now!"
# for when turn_ac_on is false
else
	puts "The AC can only cool you down, dude"
end