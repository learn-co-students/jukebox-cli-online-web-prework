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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
  
end

def play(songs)
  song_index = 0
  
  puts "Please enter a song name or number:"
  song_selection = gets.chomp

  if song_selection.to_i > 0
    if song_selection.to_i <= songs.length
      song_index = song_selection.to_i - 1
      puts "Playing #{songs[song_index]}"
    else
      puts "Invalid input, please try again"
    end
  elsif song_selection.to_i == 0 && song_selection != "0"
    if songs.include?(song_selection)
      puts "Playing #{song_selection}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_input = nil
  
  help
  
  loop do
    puts "Please enter a command:"
    user_input = gets.chomp
    
    if user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      break
    else
      puts "Invalid input, please try again"
    end
  end
  exit_jukebox
end
  