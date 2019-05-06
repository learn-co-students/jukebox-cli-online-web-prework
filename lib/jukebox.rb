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


def help(com)
  if com == "help"
    
      puts <<~HEREDOC
    
    I accept the following commands:
    - help: displays this message
    - list: displays a list of songs you can play
    - play: lets you choose a song to play
    - exit: exits this program

    HEREDOC
     
    
  else 
    puts "Invalid command"
  end  
end   

puts "Please enter a command:"
command = gets.chomp

help(command)
