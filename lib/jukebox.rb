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
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input=gets.chomp
  if array.include?(input)
    puts "Playing #{array[array.index(input)]}"
  elsif input.to_i <= array.length && input.to_i != 0
    puts "Playing #{array[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  input =""
  while input != "exit"
    input = gets.chomp
    case input
      when "help"
        help
      when "play"
        play(array)
      when "list"
        list(array)
      when "exit"
        exit_jukebox
    end
  end
end
