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
puts "help"
puts "list"
puts "play"
puts "exit"
end
def list(songs)
    songs.each_with_index do |song, index|
      puts "#{index+1}.  #{song}"
    end
end

def play (songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
  if  (1..9).include?(users_input.to_i)
    puts "Playing #{songs[users_input.to_i-1]}"
      elsif songs.include?(users_input)
          puts "Playing#{ users_input} "
        else
          puts "Invalid input, please try again"

  end

end

def exit_jukebox
  puts  "Goodbye"
end
def run
  help
  puts "Please enter a command:"
  users_input= gets.chomp
  until users_input == exit
   puts "Please enter a command:"
   if users_input == "list"
     list(songs)
      elsif  users_input == "play"
        play (songs)
      elsif  users_input == "help"
            help
          else
        end
  end
end

#
#
