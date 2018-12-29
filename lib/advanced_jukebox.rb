#require_pry

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'home/joanrig/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'home/joanrig/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
puts "
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  "
end



def list(my_songs)
  songs = my_songs.keys
  songs.each {|song| puts song}
end



  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
def play(my_songs)
  puts "Please enter a song name."
  input = gets.chomp
   
  my_songs.each do |key, value| 
  if key == input 
    puts "Playing #{input}"
    system 'open <[value]>'
  
  else puts "Invalid input, please try again."
  end
end 


def exit_jukebox
  puts "Goodbye."
end


def run(my_songs)
  loop do 
    puts "Please enter a command:"
    input = gets.chomp
   
    case input
    when "help"
      help
  
    when "list"
      list(my_songs)
  
    when "play"
      play(my_songs)
      
    when "exit"
      exit_jukebox
      break
    
    else
      puts "Invalid input, please try again."
    end
    binding.pry
  end

