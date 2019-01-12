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

def run(songs)
  puts "Please enter a command:"
  help
  
  resp = ""
  
  while resp != "exit"
  
    #play(songs)
    resp = gets.chomp
    #binding.pry 
    if resp == "list"
     #binding.pry
      list(songs)
    elsif resp == "play"
      play(songs)
    elsif resp == "help"
      help
    elsif resp == "exit"
      exit_jukebox
    end
  puts "Please enter a command:"
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
   songs_arr = (1..songs.size).to_a
  if songs.include?(response) 
    puts "Playing #{response}"
  elsif songs_arr.include?(response.to_i)
    playing = songs[response.to_i - 1]
    puts "Playing #{playing}"
    #binding.pry
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index {|value, index| puts "#{index.succ}. #{value}"}
end

def exit_jukebox
  puts "Goodbye"
end