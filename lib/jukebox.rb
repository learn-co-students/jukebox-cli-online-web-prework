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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

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
  numbers = (1..9).to_a
  if(numbers.include?(song.to_i))
    puts "Playing #{songs[song.to_i - 1]}"
  elsif(songs.include?(song))
    puts "Playing #{songs[songs.find_index(song)]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
    songs.each_with_index {|item, index|
      puts "#{index + 1}. #{item}"
    }
end

def exit_jukebox
  puts "Goodbye"
  
end

def run(songs)
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
      when "help"
        help
      when "play"
        list(songs)
        play(songs)
      when "list"
        list(songs)
      when "exit"
        exit_jukebox
        break
      else
        puts "Please enter a valid command"
    end
  end
end
