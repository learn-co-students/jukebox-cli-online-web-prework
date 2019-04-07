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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end


def play(songs_array)
  puts "Please enter a song name or number:"
    user_input = gets.chomp
      if (1..9).to_a.include?(user_input.to_i)
        puts "Playing #{songs_array[user_input.to_i - 1]}"
      elsif songs_array.include?(user_input)
        puts "Playing #{user_input}"
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
    user_command = gets.chomp
    if user_command == "exit"
      exit_jukebox
    elsif user_command == "list"
      list(songs)
      play(songs)
    else user_command == "play"
      play(songs)
  end
end
