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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, number| puts "#{number + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  if songs.include?(selection)
    puts "Playing #{selection}"
  elsif (1..9).include?(selection.to_i)
    puts "Playing #{songs[selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.chomp
    unless command == "exit"
      puts "Please enter a command:"
      if command == "help"
        help
      elsif command == "list"
        list(songs)
      elsif command == "play"
        play(songs)
    end
  end
  exit_jukebox
end