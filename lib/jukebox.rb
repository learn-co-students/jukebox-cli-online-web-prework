my_songs = [
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

#def say_hello(name)
#  "Hi #{name} jerk!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)
def help
  puts "I accept the following commands:"
  puts "-help : displays this help message"
  puts "-list : displays a list of songs you can play"
  puts "-play : lets you choose a song to play"
  puts "-exit : exits this program"
end

def list(my_songs)
  my_songs.each {|song, location| puts song}
end

def play(my_songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{my_songs[user_response.to_i - 1]}"
  elsif my_songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
   puts "Goodbye"
  end

  def run(my_songs)
    help
    input = nil
    while input != "exit"
      puts "Please enter a command:"
      input = gets.chomp
    case
    when input == "help"
      help
    when input == "list"
      list(my_songs)
    when input == "play"
      play(my_songs)
    else
      puts "Invalid input, please try again"
    end
  end
  exit_jukebox
end
