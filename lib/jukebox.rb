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
  songs.each_with_index do |song_title, index|
    puts "#{index + 1}. #{song_title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  song_number = -1
  song_name = ""
  is_number = false
  if selection.to_i.to_s.eql? selection
    is_number = true
  end
  if is_number
    if selection.to_i - 1 >= 0
      song_name = songs[selection.to_i - 1]
    else 
      song_name = ""
    end
  else
    song_name = selection
  end
  if songs.include?(song_name)
    puts "Playing <#{song_name}>"
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
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      command = "exit"
      exit_jukebox
    end
  end
end

run(songs)
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enger your name:"
#users_name = gets.chomp
#puts say_hello(users_name)