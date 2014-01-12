puts "Who dis?"
fist = gets.chomp
 puts "My first name is #{fist}"
 puts "What yer last name?"
last = gets.chomp
puts "My first name is #{fist} #{last}"
 puts "My first name is #{fist} #{last}, hells yeah!"
puts "My full name is, wait for it... #{fist} #{last}, ooooohhhh yeah!"
puts "interpolation rocks! especially if it is done by the one and only #{fist} #{last}"

puts "interpolation rocks! especially if it is done by the one and only #{fist} #{last}"
fullname = fist + last
fullname = fist + " " + last
puts fullname
puts "where are you?"
location = gets.chomp
puts "My name is #{fullname} and i am at #{location}"
