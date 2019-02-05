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

def list(songlist)
  songlist.each_with_index {|song, index|puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  #chosen_song=""
  answer = gets.chomp
  if answer.to_i!=0
    chosen_song=songs[answer.to_i-1]
  else
    chosen_song=answer
  end
  if songs.include?(chosen_song)
    puts "Playing #{chosen_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  loop do
    help
    puts "Please enter a command:"
    answer=gets.chomp
    case answer.downcase
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
  end
end
# list(songs)
# play(songs)
run(songs)
