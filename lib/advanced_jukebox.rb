#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/04.mp3',
"Wolf" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/05.mp3',
"Blue" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'home/Luiszaba/jukebox-cli-online-web-prework/audio/Emerald-Park/07.mp3'}

def help
 def help
  help = <<-HELP
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : Lets you choose a song to play
  - exit : exits the program
  HELP
  puts help
end

def list(my_songs)
  i=0
  my_songs.keys.each_with_index do |song, index|
  puts "#{index+1}. #{song}" 
end
end

def play(my_songs)
  puts "Please enter a song name"
  now_playing = gets.chomp
  if my_songs.key.include?(now_playing.to_i)
    puts "Invalid inplut, please try again"
  else
    puts "Now playing #{now_playing}"
    system 'open' << my_songs[now_playing]
 end
 end
 
 def exit_jukebox
   puts "Goodbye"
   end

def run(my_songs)
  input = ""
  while input
  puts "Please enter a command:"
  input = gets.downcase.strip
  case input
  when 'list'
    list[my_songs]
    when 'help'
    help
      when 'play'
        list[my_songs]
        play[my_songs]
        when 'exit'
          exit_jukebox
          break
        else
          help
      end
    end
  end

end