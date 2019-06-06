

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
  songs_index = {}
  songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
    songs_index[index+1] = value   
  end
  songs_index
end

def play(songs)
  counter=0 
  hsongs=list(songs).map{|(k,v)| [k.to_s,v]}.to_h 
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if hsongs.values.include? user_input
    puts "Playing #{user_input}"
  elsif hsongs.keys.include? user_input
    puts "Playing #{hsongs[user_input]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = ""
  until user_command == "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command == "list"
      list(songs)
    elsif user_command == "play"
      play(songs)
    elsif user_command == "help"
      help
    end
  end
  exit_jukebox
  
end