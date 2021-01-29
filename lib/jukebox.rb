require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
puts "#{index+1}. #{song} "
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if songs.index(song_choice) != nil
    puts "Playing #{song_choice}"
  elsif (1..9).to_a.index(song_choice.to_i) != nil
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
  puts "Please enter a command:"
  user_command = gets.strip
  case user_command
  when "help"
    help
  when "play"
    play(songs)
  when "list"
    list(songs)
  when "exit"
    exit_jukebox
    break
  else
    help
    end
  end
end
