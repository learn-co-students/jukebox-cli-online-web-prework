require "pry"

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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
  
end

def play(songs)
  puts "Please enter a song name or number:"
  song_selection = gets.chomp
  
  if !song_selection.to_i == 0?
    binding.pry
    if songs.include?(song_selection)
      puts "Playing #{song_selection}"
    end
  elsif song_selection.to_i > 0
    if list(songs).include?(song_selection)
      puts "Playing #{songs[song_selection + 1]}"
    end
  else
    puts "Invalid input, please try again"
  end
end