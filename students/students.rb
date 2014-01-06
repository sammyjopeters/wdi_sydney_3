require 'fileutils'

students = ['Adam Richards',
'Alberto Forni',
'Daniel Georgatos',
'Eduard Fastovski',
'Emily McCartney',
'Federico Tagliabue',
'Lauren Krueger',
'Luke Mesiti',
'Luke Schoen',
'Marcus Hoile',
'Nick Morgan',
'Pranava Swaroop',
'Samantha Peters']

students.each do |student|
  FileUtils.mkdir student.gsub(' ','_').downcase
end