my_songs = [
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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end

def play(my_songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  valid = false
    my_songs.each_with_index do |song, index|
      if choice == my_songs 
        puts "Playing #{choice}"
        valid = true
      else (choice.to_i - 1 == index)
        puts "Playing #{my_songs[index]}"
        valid = true
     end
  end
  puts "Invalid input, please try again"
  valid = false
end



def exit_jukebox
  puts "Goodbye"
end
  
  
def run(my_songs)
  loop do 
    puts "Please enter a command:"
    input = gets.chomp
    case input 
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help 
    when "exit"
      break
    end
  end
  exit_jukebox
end
