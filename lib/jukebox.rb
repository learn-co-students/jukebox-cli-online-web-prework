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


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
    
  end
 
  
end

def play(songs)
  puts "Please enter a song name or number:"
  uinput = gets.chomp 
  #binding.pry
  
  songs.each_with_index do |song, index|
    if uinput.length > 1 && uinput.to_i > songs.length
      return puts "Invalid input, please try again"
    elsif uinput.length == 1 && uinput.to_i == index + 1
     # binding.pry
      return puts "Playing #{song}"
    elsif uinput == song
     return puts "Playing #{song}"
    else false
    end

end
return puts "Invalid input, please try again"
end
#binding.pry

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  puts "Please enter a command:"
  uinput = gets.chomp
  if uinput == "exit"
    return exit_jukebox
    elsif uinput == "help"
    help
    elsif uinput == "list"
    list(songs)
    elsif uinput == "play"
    play(songs)
  else run
end
end


#binding.pry

