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
def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs) 
  input = gets.chomp
  valid = false
  puts "Please enter a song name or number:"
  songs.each_with_index do |key, value|
    if (input.to_i - 1 == value)
      puts "Playing #{songs[value]}"
      valid = true
    elsif (input == key)
      puts "Playing #{input}"
      valid = true
    end
  end
  if valid == false 
  puts "Invalid input, please try again" 
end
end



def list (songs) 
  songs.each.with_index do |key, value| 
  puts "#{value + 1}. #{key}"
end
end


def exit_jukebox() 
  puts "Goodbye"
end

def run(songs)
  puts"Please enter a command:"
  answer = gets.chomp
  case answer
    when "help"
      help()
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit
    else
end
end
  