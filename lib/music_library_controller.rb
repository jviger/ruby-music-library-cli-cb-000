class MusicLibraryController
  
  
  
  def initialize(path = "./db/mp3s")
    
    MusicImporter.new(path).import
    
  end
  
  def call 
    user_input = ''
      while user_input != "exit" do 
      puts "Welcome to your music library!"
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "What would you like to do?"
      puts "To quit, type 'exit'."
      user_input = gets
      
      case user_input
      when "list artists"
        puts 'Well done!'
      when "list songs"
        puts 'Try harder!'
      when "list genres"
        puts 'You need help!!!'
      when "list artist"
        puts "You just making it up!"
      when "list genre"
        puts "You just making it up!"
      when "exit"
        puts "You just making it up!"
      else
        puts "Enter a listed value"
      end
    end
    
  end
  
  def list_songs
    song_list =Song.all.sort{|x,y| x <=> y }
    song_list.each do |x|
    puts "#{song_list.index(x)}. #{song_list.x.artist.name} - #{song_list.x.song.name} - #{song_list.x.genre.name}"
    end
  end
  
end