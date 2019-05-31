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
      puts <<~HEREDOC
    
    I accept the following commands:
    - help: displays this message
    - list: displays a list of songs you can play
    - play: lets you choose a song to play
    - exit: exits this program
     HEREDOC
end

def play(songs) 
  puts "Please enter a song name or number:"
  pick = gets.chomp
  a_response = nil 
  songs.each_with_index do |song, index|
      if song.include?(pick) 
        a_response = "Playing #{song}"
        elsif songs[pick.to_i] == song
        a_response = "Playing #{song}"
        else
        a_response = "Invalid input, please try again"
      end
    puts a_response
  end 
end

def list(songs)
  songs.each_with_index do |data, i|
  puts "#{i + 1}. #{data}"
  end 
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help 
  puts "Please enter a command:"
  res = gets.downcase.strip
  if res == "play"
    play(songs)
  end
  if res == "exit"
    exit_jukebox
  end
end