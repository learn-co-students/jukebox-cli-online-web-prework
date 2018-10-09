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
  puts /^(?=.*help) (?=.*list) (?=.*play) (?=.*exit) .+/m
end

def input_error
  puts 'Invalid input, please try again'
end

def play(songs)
  play_command = gets.chomp
  if play_command =~ /\A\d+\Z/
    # user entered a number
    play_command = play_command.to_i
    if play_command.between?(1, songs.length) # check that number is valid
      puts songs[play_command.to_i - 1]
    else
      input_error
    end
  else
    # not a number, check for song title match
    if songs.find { |song| song == play_command }
      puts play_command
    else
      input_error
    end
  end
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def exit_jukebox
  puts 'Goodbye'
  
end

def run(songs)
  help
  while true
    puts 'Please enter a command:'
    case gets.chomp
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'exit'
      break
    else
      input_error
    end
  end
  exit_jukebox
end