# Add your code here
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
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_title, index|
    puts "#{index + 1}. #{song_title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  song_title_found = false

  songs.each_with_index do |song_title, index|
    #binding.pry
    if user_input == song_title || user_input == (index + 1).to_s
      song_title_found = true
      puts "Playing #{index + 1} #{song_title}"
    end
  end

  if !song_title_found
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.strip

  if user_input == "exit"
    exit_jukebox
  end
  elsif user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  else user_input == "play"
    play(songs)
  end
end
