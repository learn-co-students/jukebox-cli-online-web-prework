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

  puts "Please enter a command:"
end


def list(songs)
  songs.each_with_index do|value, index|
  puts "#{index +1}. #{value}"
  end
end
# list(songs)

def play (songs)
  puts "Please choose a song by number or song name:"
    user_input = gets.chomp

  if songs.include?(user_input)
    puts "Playing #{user_input}"

  elsif (1..9).include?(user_input.to_i)
  puts "Playing #{songs[user_input.to_i[-1]]}"
else
  puts "Invalid input, please try again"
  end

end
# play(songs)
def exit_jukebox
  puts "Goodbye"


end

def run(songs)
  help
  selection = gets.chomp

case selection
  when 'help'
    help
  when 'list'
    list(songs)
  when 'play'
    play(songs)
  when 'exit'
    exit_jukebox
  end

end
