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

def list(array)
  array.each_with_index{|x,i| p "#{i+1}. #{x}"}
end

# def play(array)
#   puts "Please enter a song name or number:"
#   input = gets.chomp
#   # puts "#{input}"
#   array.each_with_index{|x,i|
#     binding.pry
#     if (input == i || input == x)
# 			puts "Playing #{x}"
# 		else
#       puts "Invalid input, please try again"
# 		end
# 	}
# end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if array.include?(input)
		puts "Playing #{input}" 
	elsif input.to_i.to_s == input
			j = input.to_i 
			if array[j]
			# i = array.index(input)
				puts "Playing #{array[j-1]}"
			else
			 	puts "Invalid input, please try again"
			end
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
  input = gets.chomp
  until input == "exit"
    case input
    when "list"
      list(array)
    when "play"
      play(array)
    when "help"
      help
   
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
     
end
