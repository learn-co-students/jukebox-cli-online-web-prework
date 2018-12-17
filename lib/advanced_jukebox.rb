#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'home/sztanski/jukebox-cli-online-web-prework/audio/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'home/sztanski/jukebox-cli-online-web-prework/audio/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.each {|song, path| puts song}
end


def play(my_songs)
  puts "Please enter a song name or number:"
  id = gets.chomp
  if my_songs.has_key?(id)
    system "open #{my_songs[id]}"
    puts "Playing #{id}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
    loop do
      puts "Please enter a command:"
      input = gets.strip
      case input
        when "list"
          list(my_songs)
        when "play"
          play(my_songs)
        when "help"
          help
        when "exit"
          exit_jukebox
          return
      end
    end
  end

run(my_songs)
