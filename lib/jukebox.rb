songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight",
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
end

def play(songs_array)
  song_choice_max_number = songs_array.length

  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if user_response.to_i.between?(1, song_choice_max_number)
    puts "Playing #{songs_array[user_response.to_i - 1]}"
  elsif songs_array.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    end
    puts "Please enter a command:"
    user_response = gets.chomp
  end
  exit_jukebox
end
