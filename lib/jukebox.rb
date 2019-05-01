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


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  #string=songs.map{|i| "#{songs.index(i)+1}. #{i}"}
  string=[]
  songs.each_with_index{|item,index| string.push("#{index+1}. #{item}")}
  puts string.join("\n")
end

def play(songs)
  puts "Please enter a song name or number:"
  input=gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif input.to_i!=0 && input.to_i<=songs.size
  #specify the input.to_i!=0 because converting string to int
  #returns 0
    puts "Playing #{songs[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command=gets.chomp
  if command=="exit"
    exit_jukebox
  else
    while command!="exit"
      command=gets.chomp
      if command=="list"
        list(songs)
      elsif command=="play"
        play(songs)
      elsif command=="help"
        help
      elsif command=="exit"
        exit_jukebox
      end
    end
  end
end
