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

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(songs_arr)
  counter = 0
  until counter == songs_arr.length
    puts "#{counter + 1}. #{songs_arr[counter]}"
    counter += 1
  end
end
  
def play(songs_arr)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..9).include?(input.to_i)
    puts "Playing #{songs_arr[input.to_i - 1]}"
  elsif songs_arr.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
  gets.chomp
end
  
def run(songs_arr)
  help
  input = prompt
  
  while input != "exit"
    if input == "list"
      list(songs_arr)
      input = prompt
    elsif input == "play"
      play(songs_arr)
      input = prompt
    elsif input == "help"
      help
      input = prompt
    else
      puts "Invalid command"
      input = prompt
    end
  end
  exit_jukebox
end