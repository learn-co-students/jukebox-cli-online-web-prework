require "pry"

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def play(songs)
puts "Please enter a song name or number:"
response = gets.chomp
songs.each_with_index do |song, i|
if response.to_i == i
puts "playing #{songs[i-1]}"
elsif songs.include?(response) 
puts "playing #{response}"
else puts "Invalid input, please try again"
end 
end 
end 



def list(songs)
  songs.each.with_index(1) do |value, index|
    puts "#{index}: #{value}"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
input = gets.chomp
if input == "play"
play(songs)
elsif input == "list"
list(songs)
elsif input == "help"
help
elsif input == "exit"
exit_jukebox
else
puts "Invalid input, please try again"
end
end








def helper_method
end



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

