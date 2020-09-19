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

def self.find_by_name(name) #now we are finding the songs 
##binging.pry #used binding pry to get one of the songs out 
 @@all.detect{ |song| song.name == name}
 #find an array of objects, could've used .find
 # |song| each song object, going to pass them in 
 #grabbing element from array and returning it 
 end

def self.find_or_create_by_name(name)
  if self.find_name_name(name)
    self.find_by_name(name)
  else #if it isnt there then...
    self.create_by_name(name)
end


end 



#saving to the object. Self is the object, the class method is @@all. We are calling the class method through the instance method 