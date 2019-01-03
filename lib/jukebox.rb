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
puts "help"
puts "list"
puts "play"
puts "exit"
end
def play(songs)

    if  songs.include?(songs) == false
    puts "Invalid input, please try again"
     else
      songs.each_with_index do |song, index|
      puts "#{index+1}.  #{song}"
    end
  end
end
