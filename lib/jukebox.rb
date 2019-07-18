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
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input_name = gets.chomp 
  user_input_number = gets.chomp
  songs.each_with_index do |song, index|
    if song == user_input_name || (index + 1).to_s == user_input_number
         puts "Playing #{song}"
    elsif song != user_input_name || (index + 1).to_s != user_input_number
      puts "Invalid input, please try again"
    end
  end
end 

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  help 
  command_input = ""
  until command_input == "exit"  do
    puts "Please enter a command:"
    command_input = gets.strip
    case
    when command_input == "list"
      list(songs)
    when command_input == "play"
      play(songs)
    when command_input == "help"
      help
    when command_input == "exit"
      exit_jukebox
    end
  end
end

