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
    self.new.tap {|song| song.save}
  end
  
  def self.new_by_name(name)
    self.new.tap {|song| song.name = name}
  end
  
  def self.create_by_name(name)
    self.new_by_name.tap(name) {|song| song.save}
  end
    
end
