#this is so you can capture the filename
filename = ARGV.first

#this opens the filename 
prompt = "> "
txt = File.open(filename)

# this tells you what filename was opened 
# and displays the content of that file
puts "Here's your file: #{filename}"
puts txt.read()

# prompts for the input again
puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()

txt_again = File.close(file_again)
txt = File.close(filename)