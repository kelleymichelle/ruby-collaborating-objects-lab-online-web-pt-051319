require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    files = Dir.glob("#{path}/*.mp3")
    files.collect do |file|
      x = file.split("./spec/fixtures/mp3s/")
      x.reject(&:empty?)
    end.flatten 
  end  

  def import
    files.each {|filename| Song.new_by_filename}
  end  

end  