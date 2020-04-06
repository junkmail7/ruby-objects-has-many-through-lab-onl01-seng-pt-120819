class Artist
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_song(songname, genrename)
    Song.new(songname, self, genrename)
  end

  def songs
    Song.all.select do |song|
      song.artist==self
    end
  end
  
  def genres
    artistgenres=[]
    songs.each do |song|
      artistgenres << song.genre
    end
    return artistgenres
  end
end