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
  puts "I accept the following commands:
        \n- help : displays this help message
        \n- list : displays a list of songs you can play
        \n- play : lets you choose a song to play
        \n- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |title, i|
    puts "#{i+1}. #{title}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_choice  = gets.chomp
  if songs_array.include?(user_choice)
    puts "Playing #{user_choice}"
  elsif 0 < user_choice.to_i && user_choice.to_i < (songs_array.length + 1)
    puts "Playing #{songs_array[user_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
      when "list"
        list(songs_array)
      when "play"
        play(songs_array)
      when "help"
        help
      when "exit"
        exit_jukebox
        return
    end
  end
end
