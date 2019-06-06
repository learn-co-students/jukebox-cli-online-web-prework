require 'pry'
#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }
def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(my_songs)
  listArr = my_songs.keys

  listArr.each.with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
<<<<<<< HEAD
=======
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
>>>>>>> f9335c496c25508c1b6e88e10dbfbb21742e3aef
  puts "Please enter a song name:"
  input = gets.chomp
  songFound = false
  songsArr = my_songs.keys
  songsArr.each do |song|
    if song.include?(input) == true
      puts "Playing #{song}"
<<<<<<< HEAD
      puts "opening song from #{my_songs[song]}"
      system "open #{my_songs[song]}"
      binding.pry
=======
      system "open #{my_songs[input]}"
>>>>>>> f9335c496c25508c1b6e88e10dbfbb21742e3aef
      songFound = true
      break
    end
  end
  if songFound != true
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def get_command
  puts "Please enter a command:"
  gets.chomp
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help

  command = get_command

  while command != "exit" do
    case command
    when "help"
      help
      command = get_command
    when "list"
      list(my_songs)
      command = get_command
    when "play"
      play(my_songs)
      command = get_command
    when "exit"
      break
    else
      puts "Invalid command, please specify a command.  For command list, type help."
      command = get_command
    end
  end
  exit_jukebox
end
