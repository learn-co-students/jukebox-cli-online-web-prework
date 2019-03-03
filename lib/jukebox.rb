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
  songs.each do |song|
    puts "#{songs.index(song)}. #{song}"
  end
end

def play(songs)
  user_response = 0
  choice_number = -1
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  choice_number = get_choice_number(songs, user_response)
  if choice_number != -1
    puts "Playing #{songs[choice_number - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def get_choice_number(songs, user_response)
  if user_response.to_i > 0 && user_response.to_i < songs.length
    return user_response.to_i
  else
    songs.each do |song_name|
      if song_name == user_response
        return songs.index(song_name) + 1
      end
    end
  end
  #if we've made it this far, the choice was invalid.  Return -1.
  -1
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = 0
  puts "Please enter a command:"
  help
  until user_response == "exit"
    user_response = gets.chomp
    case user_response
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input.  Please try again."
    end
    puts "Please enter a command:"
  end
end
