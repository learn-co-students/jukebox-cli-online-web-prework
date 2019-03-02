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
  message = "I accept the following commands:
             - help : displays this help message
             - list : displays a list of songs you can play
             - play : lets you choose a song to play
             - exit : exits this program"
  puts message
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
    answer = gets.chomp
    if my_songs.include? answer
      puts "Playing #{answer}"
    elsif (0...my_songs.length).include? answer.to_i-1
      puts "Playing #{my_songs[answer.to_i-1]}"
    else
      puts "Invalid input, please try again"
    end
  end
  # song = gets.chomp # puts out the song name that user input
  # i = 0
  # # number = gets.chomp
  # # song_list[i]
  # my_songs.each do |song_list|
  #   Pry.config.input = STDIN
  #   Pry.config.output = STDOUT
  #   binding.pry
  #   if(my_songs[i + 1] == song)
  #
  #     puts "Playing #{my_song[i + 1]}"
    # elsif(number == song_list[i])
    #   i < song_list.length
    #   i += 1
    #   puts "Playing #{song_list[i]}"
#     else
#       puts "Invalid input, please try again"
#     end
#   end
# end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  answer = gets.chomp
  puts "Please enter a command:"
    if(answer == "help")
      help
    elsif(answer == "exit")
      exit_jukebox
    end
end