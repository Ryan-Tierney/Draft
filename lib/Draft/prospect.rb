class Draft::Prospect
  
  attr_accessor :name, :summary
  
  @@all = [] 
  
  def initialize(name, summary)
    @name = name 
    @summary = summary 
    save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
   @@all << self 
  end 
  
end 