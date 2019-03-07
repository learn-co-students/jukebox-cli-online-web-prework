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
    puts "#{index.to_i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  response = "Invalid input, please try again"
  songs.each_with_index do |song, index|
    if song.include?(request) || (index + 1).to_s.include?(request)
      response = "Playing #{song}"
    end
  end
  puts response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  def get_input
    puts "Please enter a command:"
    command = gets.chomp
  end
  get_input

  while command != "quit"
    if command == "list"
      list(songs)
      get_input
    elsif command == "help"
      help
      get_input
    elsif command == "play"
      play(songs)
      get_input
    else get_input
    end
    exit_jukebox
  end
end

run(songs)
