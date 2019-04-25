require 'pry'

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

# Puts CLI commands
def help()
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end 

# Puts each song
def list(songs)
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}"}
end

# Play songs in command prompt
def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  valid = false
  
  # Puts playing message if input is song number or part of song name
  songs.each.with_index do |song, index|
    if user_song.to_i == index + 1 || song.include?(user_song)
      puts "Playing #{songs[index]}"
      valid = true
    # elsif song.include?(user_song)
    #   puts "Playing #{user_song}"
    #   valid = true
    end
  end
  # If no matches, output error message
  puts "Invalid input, please try again" if valid == false
end 

# Puts exit message
def exit_jukebox()
  puts "Goodbye"
end

# Run Jukebox
def run(songs)
  help()                    # Display possible commands
  user_command = ""

  until user_command == "exit"
    puts "
    Please enter a command:"
    user_command = gets.chomp

     # case commands
     case user_command
       when "help"
         help()
       when "list"
         list(songs)
       when "play"
         play(songs)
       when "exit"
        exit_jukebox()
     end
  end
end