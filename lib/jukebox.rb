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

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  #binding.pry
  if songs.include?(song)
    puts "Playing #{song}"
  elsif (1..9).include?(song.to_i)
    puts "Playing #{songs[song.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index} - #{song} "
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  help 
  stop_loop = false 
  until stop_loop == true
    puts "Please enter command:"
    user_input = gets.chomp 
    if user_input.downcase == "help"
      help 
    elsif user_input.downcase == "list"
      list(songs)
    elsif user_input.downcase == "play"
      play(songs)
    elsif user_input.downcase == "exit"
      exit 
      stop_loop = true
    else 
      puts "Invalid input. Please try again"
    end 
  end 
    
end 
