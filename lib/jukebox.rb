# Add your code here
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
  array.each.with_index(1) {|item, index| puts "#{index}. #{item}"}
end


def play(array)
  puts "Please enter a song name or number:"
  response = gets.chomp

  if response.to_i >= 1 and response.to_i <= array.length
    index = response.to_i - 1
    puts "Playing #{array[index]}"
  elsif array.include?(response)
    song = array.find {|song| song == response}
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(array)
  puts "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  elsif input == "play"
    play(array)
  elsif input == "list"
    list(array)
  elsif input == "exit"
    exit_jukebox
  else
    puts "Invalid Entry"
  end

end
