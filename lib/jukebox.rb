
require "pry"

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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  listed_songs = []
  index = 0 
  songs.each do |song|
      puts "#{index + 1}. #{song}"
      listed_songs.push("#{index + 1}. #{song}")
      index += 1
    end
  listed_songs
end

def play(songs)
  #binding.pry
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  song_list = list(songs)

  song_list.each do |song|
    if song.include?(user_response)
      puts "Playing #{song[3..song.size-1]}"
      #binding.pry

    else
      puts "Invalid input, please try again"
    end
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help #1. call help
  user_input = ""

  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp

    if user_input == "help"
      help
      next

    elsif user_input == "list"
      list(songs)
      next

    elsif user_input == "play"
      play(songs)
      next

    elsif user_input == "exit"
      exit_jukebox
      break
    end
  end
end

  
      



  