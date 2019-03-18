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

def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  my_songs.each_with_index do |my_song, index|
      if user_input == my_song || user_input.to_i == index+1 
        puts "Playing #{my_song}"
        break
      else
        puts "Invalid input, please try again."
        break
    end
  end
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end

