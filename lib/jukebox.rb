# Add your code here

#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

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

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.strip
  track=song_name.to_i - 1
  if track < 0 && songs.include?(song_name)
    index = songs.index(song_name)
    puts "Playing #{songs[index]}"
  elsif track >= 0 && 
    puts "Playing #{songs[track]}"
  else 
    puts "Invalid input, please try again"
  end
end


#The with_index method takes an optional parameter to offset the starting index. #each_with_index does the same thing, but has no optional starting index.

#For example:

#[:foo, :bar, :baz].each.with_index(2) do |value, index|
#    puts "#{index}: #{value}"
#end

#[:foo, :bar, :baz].each_with_index do |value, index|
#    puts "#{index}: #{value}"
#end



def list (songs)
  i = 1
  songs.each do |song|
    puts "#{i}. #{song})"
    i +=1
  end
end 

def exit_jukebox
  puts "Goodbye"
end 