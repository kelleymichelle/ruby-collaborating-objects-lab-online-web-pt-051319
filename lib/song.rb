require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    
    
  end
  
  def self.new_by_filename(filename)
    x = filename.split(" - ")
    songname = x[1]
    art = x[0]
    c = self.new(songname)
    c.artist = Artist.new(art)
    c.artist.add_song(songname)
    return c
  end  
   
end  