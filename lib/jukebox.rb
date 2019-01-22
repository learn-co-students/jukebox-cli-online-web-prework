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
  songs.each.with_index {|song, number| puts "#{number+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  u_input = gets.chomp
  songs.each.with_index do |song, number|
    if u_input == (number+1).to_s
      puts "Playing #{song}"
    elsif u_input == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  u_input = gets.chomp.downcase
  if u_input == "help"
    help
  elsif u_input == "list"
    list
  elsif u_input == "exit"
    exit_jukebox
  elsif u_input == "play"
    play(songs)
  else
    puts "Invalid command, please try again"
  end
end
