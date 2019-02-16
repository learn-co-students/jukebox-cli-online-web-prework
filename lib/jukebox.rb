 
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
  puts " I accept the following commands:
         - help : displays this help message
         - list : displays a list of songs you can play 
         - play : lets you choose a song to play 
         - exit : exits this program"
end 


def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp 
  songs.each_with_index do |song_name, index|
    song_number = index + 1
    if user_input.to_i == song_number || user_input == song_name 
      puts "Playing #{song_name}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 


def list(songs)
  songs.each_with_index do |song_name, index|
    song_number = index + 1
    puts "#{song_number}. #{song_name}"
  end 
end


def exit_jukebox
  puts "Goodbye"
end 


def run(input)   
  help 
  puts "Please enter a command:" 
  user_input = gets.chomp 
  while user_input != "exit"
    case user_input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end 
  end 
end  
    
