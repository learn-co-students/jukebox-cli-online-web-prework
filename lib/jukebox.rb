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
puts "I accept the following commands:",
"- help : displays this help message",
"- list : displays a list of songs you can play",
"- play : lets you choose a song to play",
"- exit : exits this program"
end #end help 

def list(songs)
  a = songs.each.with_index {|val,index| puts "#{index+1} - #{val}"}
end #list 

def play(songs)
  puts 'Please enter a song name or number:'
  users_pick = gets.chomp 
  songs.each.with_index do |song, index| 
  if users_pick.is_a? String
    if users_pick == song
      puts song
    elsif users_pick.to_i-1 == index
      puts songs[index]
      else
      puts "Invalid input, please try again"
    end
  end #end if string 
  end #end songs each 
  end #end play 
  
  def exit_jukebox
    puts "Goodbye"
  end 
  
  def run(songs)
    help #call the help method 
    puts "Please enter a command:"
    input = gets.chomp
  
    unless input == "exit"
      puts = "Please enter a command:"
      input = gets.chomp
    end #unless
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
    end #end if cases  
  end #run  