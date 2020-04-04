class Doctor
  attr_accessor :name, :songs
  def initialize(name)
    @name=name
    @songs=[]
    @@all << self
  end
  
end