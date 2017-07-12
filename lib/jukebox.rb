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
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def play(songs)
  input = gets.chomp
  if input.to_i.between?(1,9)
    input = input.to_i - 1
    puts "Playing #{songs[input]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, x| puts "#{x+1}. #{song}"}
end

def run(songs)
  help
  puts "Please enter a command:"
  choice = gets.chomp
  while choice != "exit"
    if choice == "help"
      help
      puts "Please enter a command:"
      choice = gets.chomp
    elsif choice == "list"
      list(songs)
      puts "Please enter a command:"
      choice = gets.chomp
    elsif choice == "play"
      puts "Please enter a song name or number:"
      play(songs)
      puts "Please enter a command:"
      choice = gets.chomp
    end
  end
  exit_jukebox
end

def exit_jukebox
  puts "Goodbye"
end
