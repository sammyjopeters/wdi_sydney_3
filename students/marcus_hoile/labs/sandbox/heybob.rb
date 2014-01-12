# hey bob



def hey_bob(speech)
	# bob's responses
question_arr = ["You can't ask me that!", "Why would you ask me that?", "Ok", "Yes", "No", "HELL YES!", "Great question! I will not answer that"]
shout_arr = ["Woah, chill out!", "STOP SHOUTING!", "You really need to lay off the roids"]
nil_arr = ["Fine. Be that way.", "Your grasp of the english language is astounding", "You don't talk much"]
speak_arr = ["Whatever", "Is that so?", "Really?", "Tell me more sweet stuff", "You talk funny", "I could listen to you all day", "Ask me a question"]
	
	# check to see if response starts with bro
	if speech.start_with? "bro"
	# convert to leet speak here
	# remove bro from senetence
	speech.slice!("bro ")
	# convert each word to a unique string and put in an array
	speech.split!(" ")
	# for each word do all the conversion steps
	speech.each do |x|
		# each conversion step here
		x.include?('a')
		  x.gsub('4')
		end
p speech

	# outputs
	# when you ask a question
	elsif speech.include?("?")
	puts question_arr.sample

	# when in all caps, 
	elsif speech == speech.upcase
	puts shout_arr.sample

	# when you say nothing
	elsif speech == ""
	puts nil_arr.sample

	# if you tell him something. a sentence without a question mark
	else
	puts speak_arr.sample

	end
	
  
end

print "Talk to Bob, say something: "
speech = gets.chomp
while !speech.include?('quit')
  hey_bob(speech)
  speech = gets.chomp
end

