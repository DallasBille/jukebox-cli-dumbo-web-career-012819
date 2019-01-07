
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
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list(songs) #use each_with_index
  songs.each.with_index(1) do |band_song_array, index|

    puts "#{index}. #{band_song_array}"

  end
end
#binding.pry
def play(songs)
  puts "Please enter a song name or number:"
   song_number = gets.chomp
    songs.each.with_index(1) do |song,index|
      #binding.pry
      if song_number == song || song_number == "#{index}"
        puts "Playing #{song}"
        break
      else
        puts "Invalid input, please try again"
      end
    end
  end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
input = gets.chomp
while input
  puts "Please enter a command:"
  input = gets.chomp
   if input == "exit"
     exit_jukebox
     break
   elsif input == "list"
    list
    binding.pry
   elsif input == "play"
    play
  elsif input == "help"
    help
   end
 end
end
