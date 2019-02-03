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

def list(array)
  array.each do |song|
    puts (array.index(song) + 1).to_s + song
  end
end

def play (array)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  array.each_with_index do |song, i|
    if user_choice.to_i == (i + 1)
      puts "Playing #{array[i]}"
    elsif user_choice == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  loop do 
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "list"
      list(array)
    elsif user_input == "play"
      play(array)
    elsif user_input == "exit"
      break
    end
  end
  exit_jukebox
end

