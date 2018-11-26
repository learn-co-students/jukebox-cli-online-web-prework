def run(songs)
  input = ''

  while input != 'q' do
    puts 'Please enter a command:'
    input = gets.chomp.downcase
    case input
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'exit'
      input = 'q'
    else
      help
    end
  end
  exit_jukebox
end

def exit_jukebox
  puts 'Goodbye!'
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..9).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def help
  puts 'I accept the following commands:'
  commands = { :help => 'displays this help message', :list => 'displays a list of songs you can play', :play => 'lets you chooose a song to play', :exit => 'exits this program'}
  commands.each do |command, message|
    puts "- #{command} : #{message}"
  end
end
