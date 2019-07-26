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

=begin
help: outputs instructions for user on how to use the jukebox
list: outputs a list of songs the user can play
play: asks user to input a song name or number, then outputs "Playing ____"
exit: jukebox says goodbye and the program shuts down
=end

def help
  puts "I accept the following commands: \n
- help : displays this help message \n
- list : displays a list of songs you can play \n
- play : lets you choose a song to play \n
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  
  if (1..songs.size).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

=begin
def run
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  
  if user_input.downcase == "list"
    list(songs)
  elsif user_input.downcase == "play"
    play(songs)
  elsif user_input.downcase == "help"
    help
  elsif user_input.downcase == "exit"
    exit_jukebox
    break
  end
end
=end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.downcase.chomp
  
  case user_input
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  end
end
