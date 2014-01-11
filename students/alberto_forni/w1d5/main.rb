require './console'
require './animal'
require './client'

class App

  def initialize
    @main_menu = {
      a: "a - Add Animal",
      b: "b - Add Client",
      q: "q - quit" 
    }

    @animals = []
    @clients = []

    Console.clean
    begin
      Console.s
      @main_menu.values.each { |menu_option| puts menu_option }
      Console.s
      choise = Console.prompt("What do you wanna do?")
      
      case choise
      when 'a'
        @animals << Animal.new
        @animals.each { |animal| puts animal.to_s }
      when 'b'
        @clients << Client.new
        @clients.each { |client| puts client.to_s }
      when 'q'
        puts "Bye, bye"
      else
        Console.s
        puts "Wrong choise!"
        Console.s
      end

    end until choise == 'q'
  end
end

App.new