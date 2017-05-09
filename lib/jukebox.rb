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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.chomp
  if songs.include? (user_selection)
    puts "Playing #{user_selection}"
  elsif user_selection.to_i > 0 && user_selection.to_i < songs.length
    puts songs[user_selection.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = nil
  until user_command == "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
      if user_command == "list"
        list(songs)
      elsif user_command == "play"
        play(songs)
      elsif user_command == "help"
        help
      end
  end
  exit_jukebox
end
