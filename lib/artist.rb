class Artist
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
    songname.artists = self
  end
  
  def new_song(genre,songname)
    @songs << songname
    songname.artists = self
  end
  
  def songs
    @songs
  end
  
  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end