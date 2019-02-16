require 'pry'

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
  puts " I accept the following commands:
         - help : displays this help message
         - list : displays a list of songs you can play 
         - play : lets you choose a song to play 
         - exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |index, song_name|
    song_number = index + 1
    puts "#{song_number}. #{song_name}"
  end 
end

def play(songs)
binding.pry
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  
  songs.each_with_index do |index, song_name|
    song_number = index + 1 
    if song_input == song_number || song_input == song_name 
      puts "Playing #{song_name}"
    else
      puts "Invalid input, please try again"
    end 
  end 
end 
