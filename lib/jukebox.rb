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
  songs.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:" 
  song_choice = gets.chomp 
  songs.each_with_index do |song_name, index|
    if song_choice == song_name || song_choice.to_i == index+1
      puts "Playing #{song_name}"
    else 
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  help
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp.downcase
    help if input == "help"
    list(songs) if input == "list"
    play(songs) if input == "play"
  end
  exit_jukebox

end