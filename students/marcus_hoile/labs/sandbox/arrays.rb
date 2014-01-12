# create an array of the days of week
days_of_the_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
puts "here are the days of the week, starting with sunday"
puts days_of_the_week.rotate(6)
puts "-" * 10

# take sunday off and put sunday at beginning of array
puts "this is the same again but using unshift and pop"
days_of_the_week.unshift(days_of_the_week.pop)
puts days_of_the_week
puts "-" * 10

# put arrays in an array the removes the weekend
days_of_the_week = [["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], ["Saturday", "Sunday"]]
puts days_of_the_week.pop
puts "-" * 10

# sorting the remainder, weekdays
puts "sorting weekdays"
puts days_of_the_week.flatten.sort




