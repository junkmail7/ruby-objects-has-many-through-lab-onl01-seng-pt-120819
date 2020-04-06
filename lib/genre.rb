class Genre
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre==self
    end
  end
  
  def artists
    artistsofgenre=[]
    songs.each do |song|
      artistsofgenre << song.artist
    end
    return artistsofgenre
  end
end