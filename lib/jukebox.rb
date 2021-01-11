# Add your code here
def help
  puts  "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list (songs)
songs.each_index.select{|i| puts "#{(i+1)}. #{songs[i]}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  output = nil

  songs.each_with_index do |song, i|
    if user_input == song || user_input == (i+1).to_s
      output = "Playing #{song}"
    end
  end

    if output
      puts output
    else
      puts "Invalid input, please try again"
    end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  case input
       when 'exit'
        exit_jukebox
      when 'help'
         help
       when 'list'
         list(songs)
       when 'play'
         play(songs)
       else
         puts "Invalid input, please try again"
         play(songs)
    end
 end
