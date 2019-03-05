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
#code here
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, song_number|
  song_number += 1
  puts "#{song_number}." + song
  end
end

def play(songs)
  puts "Please enter a song name, or a song number:"
  user_request = gets.chomp
  songs.each_with_index do |song, song_number|
    if user_request == song || user_request.to_i == song_number + 1
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = ""
  until user_command == "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
  end
  exit_jukebox
end
