#!/usr/bin/env ruby
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
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  x = 1
  songs.each do |song|
    puts "#{x}. #{song}"
    x += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_put = gets.chomp
  if songs.include? user_put
    puts "Playing <#{user_put}>"
  elsif (1..9).include? user_put.to_i
    puts "Playing <#{songs[user_put.to_i-1]}>"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run(arg)
  help 
  puts "Please enter a command:"
  input = gets.chomp 
  unless input == "exit"
    if input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "list"
      list(songs) 
    else puts "Invalid input, please try again"
    end 
  end 
  if input == "exit"
    exit_jukebox
  end 
end
