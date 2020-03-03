require 'pry'

class Musi
  
  attr_accessor :path

  def initialize(path='./db/mp3s')
    @path = path
    MusicImporter.new(path).import
  end
  
end