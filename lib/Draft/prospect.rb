class Draft::Prospect
  
  attr_accessor :name
  attr_writer :summary
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @summary = " " 
    save 
  end 
  
  def self.all 
    Draft::Scraper.scrape_prospect if @@all.empty?
    @@all 
  end 
  
  def summary 
    Draft::Scraper.scrape_prospect if @summary.empty?
    @summary
  end 
  
  def save
   @@all << self 
  end 
  
end 