<<~HEREDOC
    
      I accept the following commands:
    - help: displays this message
    - list: displays a list of songs you can play
    - play: lets you choose a song to play
    - exit: exits this program
    HEREDOC
    

def runner
   welcome
   help($command)
end

runner    