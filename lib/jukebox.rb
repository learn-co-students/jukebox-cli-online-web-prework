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
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(songs)
  songs.each.with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songFound = false
  songs.each_with_index do |song, index|
    songNum = index + 1
    if song.include?(input) == true || input == songNum.to_s
      puts "Playing #{song}"
      songFound = true
      break
    end
  end
  if songFound != true
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def get_command
  puts "Please enter a command:"
  gets.chomp
end

def run(songs)
  help

  command = get_command

  while command != "exit" do
    case command
    when "help"
      help
      command = get_command
    when "list"
      list(songs)
      command = get_command
    when "play"
      play(songs)
      command = get_command
    when "exit"
      break
    else
      puts "Invalid command, please specify a command.  For command list, type help."
      command = get_command
    end
  end
  exit_jukebox
end
