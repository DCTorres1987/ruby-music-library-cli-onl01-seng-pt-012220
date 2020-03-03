class Genre 
  
  attr_accessor :name 
  extend Concerns::Findable
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear 
  end
  
  def save 
    @@all << @name 
  end
  
  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end
  
  def songs 
    @songs 
  end
  
  def add_song(song)
   song.genre = self unless song.genre
   songs << song unless songs.include?(song)
  end
  
  def artists 
     # self.songs.collect {|song| song.genre}
    self.songs.collect {|s| s.artist}.uniq
  end  
  
end
  