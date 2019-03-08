#!/usr/bin/env ruby
require 'pry'
require_relative "../lib/jukebox"

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
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if songs.include?(request)
    response = request
  elsif request.length == 1
    request = request.to_i - 1
    response = songs[request]
  else
    response = "Invalid input, please try again"
  end
  puts "Playing " + response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp

    if command == "list"
      list(songs)
    elsif command == "help"
      help
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
