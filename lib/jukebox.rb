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
  puts "Please enter a song name or number:"
  response = gets.chomp
<<<<<<< HEAD
  songs.each_with_index do |title, index|
    if response == index || response == title
      puts "Playing #{title}"
    end
    #puts "Invalid input, please try again"
=======
  songs.each_with_index do |index, title|
    if response == index || title
      puts "Playing #{title}"
    else
      puts "Invalid input, please try again"
    end
>>>>>>> b073f0bc01d4a182723b088c5843b90450f4f70f
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
<<<<<<< HEAD
  response = nil
  until (response == "exit" or "play" or "list" or "help")
    puts "Please enter a command"
    response = gets.chomp
  end

  if response == "play"
    play(songs)
  elsif response == "list"
    list(songs)
  elsif response == "help"
    help
  elsif response == "exit"
    exit_jukebox
  else
    puts "Please enter a valid command"
  end

=======
  response = nil
  while response != "exit" do
    puts "Please enter a command:"
    response = gets.chomp
    if response == "list"
      list(songs)
    elsif response == "play"
      play
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
    end
  end
end
