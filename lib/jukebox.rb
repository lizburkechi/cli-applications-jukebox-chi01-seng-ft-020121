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
  end

end

def exit_jukebox

end
