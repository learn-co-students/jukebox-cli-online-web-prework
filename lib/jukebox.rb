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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |value, index| 
    puts "#{index + 1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..(songs.length + 1)).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
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
  input = gets.chomp
  while input != "exit"
    if input === "list"
      list(songs)
    elsif input === "play"
      play(songs)
    elsif input === "help"
      help
    elsif input === "exit"
      exit_jukebox
      break
    else learn
      "Unknown command."
    end
    input = gets.chomp 
  end
  exit_jukebox
  #break
end