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
  puts  "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  songs.each_with_index do |title, index|
    if answer == title || answer.to_i == (index + 1)
      puts "Playing #{title}"
    else
      puts "Invalid input, please try again"
      return
    end
  end
end

def list(songs)
  songs.each_with_index do |title, index|
    puts "#{index+1}.  #{title}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do puts "Please enter a command:"
    user_answer = gets.chomp
    if user_answer == "play"
      play(songs)
    elsif user_answer == "help"
      help
    elsif user_answer == "list"
      list(songs)
    else user_answer == "exit"
      exit_jukebox
    end
    break
  end
end
