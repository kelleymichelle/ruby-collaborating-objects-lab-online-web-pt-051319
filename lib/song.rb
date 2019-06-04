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
    c = self.new
    c.name = x[1]
    c.artist = x[0]


  end  
  
  

end  