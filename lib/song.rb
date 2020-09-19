class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self #pushes whatever it is into the @@all
  end

def self.create
  song = self.new # built in method
  song.save  
  song
  
end
  
end
