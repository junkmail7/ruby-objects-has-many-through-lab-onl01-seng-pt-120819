class Artist
  attr_accessor :name, :genre
  @@all=[]
  def initialize(name,genre)
    @name=name
    @genre=genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(songname)
    @songs << songname
    songname.artist = self
  end
  
  def new_song(genre,songname)
    @songs << songname
    songname.artist = self.name
  end
  
  def songs
    @songs.collect do |song|
      song.artist==self
    end
  end
  
  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end