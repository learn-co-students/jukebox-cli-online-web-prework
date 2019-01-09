#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/home/lg33090/jukebox-cli-online-web-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/lg33090/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/lg33090/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/lg33090/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/lg33090/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/lg33090/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end 


def list(my_songs)
  i = 1
  keys = my_songs.keys 
  while i <= keys.length 
      puts "#{i}. #{keys[i-1]}"
      i += 1 
    end
end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if my_songs.keys.include?(input)
    puts "Playing #{input}"
    song = my_songs[input]
    system "open #{song}"
  elsif (1..my_songs.keys.length).to_a.include?(input.to_i)
    puts "Playing #{my_songs.keys[input.to_i - 1]}"
    song = my_songs.values[input.to_i - 1]
    song
    system "open #{song}"
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  puts "Goodbye"
end


def run(my_songs)
  help 
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp 
    if input == "list"
      list(my_songs)
    elsif input == "play"
      play(my_songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
    end
  end
end 
