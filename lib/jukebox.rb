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
index = 0
songs.each_with_index do |song|
  index += 1
  puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"

  song_input = gets.chomp
  songs.each do |song|
    if song_input == song
      puts "Playing #{song}"
    elsif (1..9).include?(song_input.to_i)
      puts "Playing #{songs[song_input.to_i[-1]]}"
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
  input = gets.chomp
  while input != exit
  if input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  elsif input == "help"
    help
  end
  puts "Please enter a command:"
  input = gets.chomp
  end
  exit_jukebox
end
