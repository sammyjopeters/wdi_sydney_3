filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts txt.read()

txt = File.close(filename)