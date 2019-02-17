#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/communal-scraper-4015/jukebox-cli-online-web-prework/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts " I accept the following commands:
         - help : displays this help message
         - list : displays a list of songs you can play 
         - play : lets you choose a song to play 
         - exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each.with_index(1) do |name_key, index|
    puts "#{index}. #{name_key}"
  end 
end

# I had a working method going above, but Beth showed me a solid "method
# chaining" that I had tried and failed in the past and then the way cool
# .with_index() method instead of index + 1 to allow for numbering the list
# without starting with zero as the first index of the array. 
# .keys created the array of keys that we used .with_index() on. 
# So .keys creates array of the keys from my_songs hash, then we iterate 
# over each (.each) element (key) in the array calling .with_index(1) on
# each element index (chaining the methods) then we puts the value of 
# that changed/iterated
# index with a period - 1. and the value of the name_key for that iteration, 
# creating a numbered list of songs to choose from as it loops and iterates
# through the array of keys(name_key).
    
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name


def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if my_songs.keys.include?(user_input)
    my_songs.each do |name_key, path_value|
      if user_input == name_key 
        puts "Playing #{name_key}"
        system "open #{path_value}"
      end 
    end
  else 
    puts "Invalid input, please try again"
  end 
end
  
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  user_input = ""
  help
  while user_input != "exit" 
    puts "Please enter a command:" 
    user_input = gets.chomp 
    case user_input
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "exit"
        exit_jukebox
    end 
  end 
end
