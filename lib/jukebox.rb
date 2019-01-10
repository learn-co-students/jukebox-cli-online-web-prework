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
  ["I accept the following commands:",
"- help : displays this help message",
"- list : displays a list of songs you can play",
"- play : lets you choose a song to play",
"- exit : exits this program"].each {|message| puts message}
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif input.upcase == input && input.to_i <= (songs.size)-1
    puts "Playing #{songs[(input.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i +1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ''
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    end
  end
  exit_jukebox
end
