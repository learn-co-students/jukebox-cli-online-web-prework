require "pry"
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
# def say_hello(name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.chomp
# puts say_hello(users_name)

def help
  
   
puts   "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

 
end

def play(songs)
  puts "Please enter a song name or number:"
  current_song = gets.chomp
  
    
  
    if (1..9).to_a.include?(current_song.to_i)
      puts "Playing #{songs[current_song.to_i - 1]}"
    elsif songs.include?(current_song)
    puts "Playing #{current_song}"
     else
      puts "Invalid input, please try again"
    end 

end

def list(songs)
  songs.each_with_index do |song, num|
    puts "#{num += 1}.#{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  input = ""
  
  while input
  
  puts "Please enter a command:"
  input = gets.downcase.strip
  case input
  when 'list'
    list(songs)
    when 'play'
      
      play(songs)
      when 'help'
        help
        when 'exit'
          exit_jukebox
          break
        else
          help
        end
      end
  
  
end