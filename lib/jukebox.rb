
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
  number = 1
  songs.each do |song|
    puts "#{number}. #{song}"
    number += 1
  end 
  
end  

def play(songs)
 puts "Please enter a song name or number:"
 reply = gets.chomp
 
if songs.include? reply
  puts "Playing #{reply}"
  elsif (1..9).to_a.include? reply.to_i
    puts "Playing #{songs[reply.to_i - 1]}"
   else 
     puts "Invalid input, please try again"
    
  end
end  

def exit_jukebox
  puts "Goodbye"
end  

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  
  case response
    when "list"
      list
    when "play"  
      play
    when "help"  
      help
    when "exit"  
      exit_jukebox
  end  
end  





