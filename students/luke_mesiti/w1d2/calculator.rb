# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "A simple Ruby Calculator."
	puts "Please type the menu number for the action you'd like to perfrom: "
	puts "1. Basic calculator"
	puts "2. Advanced calculator"
	action = gets.chomp


	while (action != "1") && (action != "2") do
		if action == "q"
			return action
		end
		puts "Please re-enter your selection: "
		puts "Action = #{action}"
		action = gets.chomp
	end

	if action == "1"
		basic_calc
	else action == "2"
		advanced_calc
	end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "Enter a number: "
  first_number = gets.chomp.to_i

  puts "Enter a second number: "
  second_number = gets.chomp.to_i

  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  function = gets.chomp.downcase

  case function  
  	when "a"
    	answer = first_number + second_number
    when "s"
    	answer = first_number - second_number
    when "m"
    	answer = first_number * second_number
    when "d"
    	answer = first_number / second_number
    else
    	puts "That is not a legit response. Retry!"
    	basic_calc
  end

  print "The answer equals: #{answer}"
  puts "\n"
  puts "_____________________________________________"
  puts "\n"
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  function = gets.chomp.downcase

  if function == "p"	
  	puts "Enter a number: "
  	first_number = gets.chomp.to_i
  	puts "Enter a second number: "
  	second_number = gets.chomp.to_i
  elsif function == "s"
  	puts "Enter a number: "
  	first_number = gets.chomp.to_i
  end
  case function  
  	when "p"
    	answer = first_number ** second_number
    when "s"
    	answer = Math.sqrt(first_number)
    else
    	puts "That is not a legit response. Retry!"
    	advanced_calc
  end

  print "The answer equals: #{answer}"
  puts "\n"
  puts "_____________________________________________"
  puts "\n"

end



response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
   response = menu
end