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
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |title, index|
    puts "#{index + 1}. #{title}"
  end
end

def play(songs)
  list(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  songs.each_with_index do |title, index|
    if response.to_i == index + 1 || response == title
      puts "Playing #{title}"
      break
    else
      puts "Invalid input, please try again"
      break
    end

  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = nil
  while response != "exit" do
    puts "Please enter a command:"
    response = gets.chomp.downcase
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
    else
      puts "Invalid input please try again"
    end
  end
end
