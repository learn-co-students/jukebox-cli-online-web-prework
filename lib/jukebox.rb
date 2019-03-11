
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end


def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}" }
end


def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  song_number_request = song_request.to_i
  if song_number_request > 0 && song_number_request < songs.length+1
    puts "Playing #{songs[song_number_request-1]}"
  elsif songs.include?(song_request)
    puts "Playing #{song_request}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  command = ""
  until command == "exit"
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    else
      exit_jukebox
    end
  end
end
