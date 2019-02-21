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
counter = 1 
songs.each_with_index do |x|
  puts "#{counter}. " + x
counter += 1
end
end
  
def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each_with_index do |x,i|
    if user_input.to_i == i+1
      puts "Playing #{x}"
    elsif user_input == x
      puts "Playing #{x}"
    else  puts "Invalid input, please try again"
    end
  end
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.chomp
    if user_input == "list"
      list
    elsif user_input == "play"
      play
    elsif user_input == "help"
      help
    else user_input == "exit"
      exit_jukebox 
    end
end

def exit_jukebox
  puts "Goodbye"
end