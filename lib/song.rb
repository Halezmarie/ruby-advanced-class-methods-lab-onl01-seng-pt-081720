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
  
  def self.new_by_name(name)
    song = self.new
    
    
  end
end


#saving to the object. Self is the object, the class method is @@all. We are calling the class method through the instance method 