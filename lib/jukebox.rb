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
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  userSong = gets.chomp
    if (1..9).to_a.include?(userSong.to_i)
      puts "Playing #{songs[userSong.to_i-1]}"
    elsif songs.include?(userSong)
      puts "Playing #{userSong}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    if command == "list"
      list
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "play"
      play
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    else
      puts "This is not a valid command, try again"
      command = gets.chomp
    end
  end
  exit_jukebox
end
