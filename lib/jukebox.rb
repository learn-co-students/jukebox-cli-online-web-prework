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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)



def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)

  songs.each_with_index do
    |value, index| puts "#{index+1}. #{value}"
  end

end


def play(songs)

  arr = (1..9).to_a

  puts "Please enter a song name or number:"

  input = gets.strip.chomp

  if arr.include?(input.to_i)
    puts "Playing #{songs[input.to_i-1]}"

  elsif songs.include?(input)
    puts "Playing #{input}"

  else
    puts "Invalid input, please try again"

  # if  songs.include?(input)
  #   puts "Playing #{input}"
  #
  # elsif songs[input.to_i-1]
  #   puts "Playing #{songs[input.to_i-1]}"
  #
  # else puts "Invalid input, please try again"
  #
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp

  case input
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
    break
    end
end
end
