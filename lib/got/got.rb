class Got

  attr_accessor :name, :id 
  
  @@all = []
  
  def initialize(name, id)
    @name = name
    @id = id
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_id(id)
    index = id.to_i -1 
    all[index]
  end


end