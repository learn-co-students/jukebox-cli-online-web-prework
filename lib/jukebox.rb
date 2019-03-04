#require 'pry'

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
  puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def play(songs)
	userInput = gets.chomp
	if songs.include?(userInput)
		puts "Playing #{userInput}"
	elsif (1..9).to_a.include?(userInput.to_i)
	  puts "Playing #{songs[userInput.to_i-1]}"
	else
		puts "Invalid input, please try again."
	end  
end

def list(songs)
  puts songs
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  userInput = gets.chomp
  if userInput == "play"
    play(songs)
  elsif userInput == "list"
    list(songs)
  elsif userInput == "help"
    help
  elsif userInput == "exit"
    exit_jukebox
  end
end