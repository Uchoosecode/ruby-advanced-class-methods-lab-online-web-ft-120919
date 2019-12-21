class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    # song = self.new 
    # song.save
    # song
    self.new.tap {|song| song.save}
  end
  
  def self.new_by_name(name)
    # song = self.new
    # song.name = name
    # song
    self.new.tap {|song| song.name = name}
  end
  
  def self.create_by_name(name)
    song = self.create 
    song.name = song
  end
    
end
