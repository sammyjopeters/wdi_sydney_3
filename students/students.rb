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
  folder_name = student.gsub(' ','_').downcase
  FileUtils.mkdir folder_name
  FileUtils.chdir folder_name do
    FileUtils.touch '.gitkeep'
  end
end