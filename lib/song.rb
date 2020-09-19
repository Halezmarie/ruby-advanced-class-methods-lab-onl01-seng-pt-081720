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
    song.name = name 
    song
  end #created one 
  
  
  def self.create_by_name(name)
  song = self.new
  song.name = name 
  song.save
  song
end #then save it 

def self.find_by_name(name)

end 



#saving to the object. Self is the object, the class method is @@all. We are calling the class method through the instance method 