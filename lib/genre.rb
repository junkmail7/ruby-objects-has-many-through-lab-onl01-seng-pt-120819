class Genre
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(songname)
    @songs << songname
    @songs.genre = self
  end
  
  def songs
    @songs
  end
  
  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end