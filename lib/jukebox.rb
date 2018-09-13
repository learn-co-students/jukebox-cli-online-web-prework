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

def list songs
  songs.each.with_index(1) {|song, i| puts "#{i}. #{song}"}
end

def play songs
  puts "Please enter a song name or number:"
  choice = gets.chomp
  song_i = songs.index choice
  song_i ||= (choice.to_i - 1)
  if song_i >= 0 && song_i < songs.size
    puts "Playing #{songs[song_i]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run songs
  help
  loop do
    puts "Please enter a command:"
    choice = gets.strip
    case choice
    when "help"
      help
    when "list"
      list songs
    when "play"
      play songs
    when "exit"
      exit_jukebox
      break
    end
  end

end
