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



def list(my_songs)
  my_songs.each.with_index(1) do |name, index|
    puts "#{index}. #{name}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  answer = gets.chomp
  my_songs.each.with_index(1) do |name, index|
    if answer == (index.to_s) || answer == name 
      puts "Playing #{name}"
    else 
      puts "Invalid input, please try again"
  end
end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
    puts "Please enter a command:"
    answer = gets.chomp
    until answer.downcase == "exit"
      if answer.downcase == "help"
          help
          puts "Please enter a command:"
          answer = gets.chomp
      elsif answer.downcase == "list"
          list(my_songs)
          puts "Please enter a command:"
          answer = gets.chomp
      elsif answer.downcase == "play"
          play(my_songs)
          puts "Please enter a command:"
          answer = gets.chomp
      else
          puts "Please enter a command:"
      end
    end
    exit_jukebox
end



