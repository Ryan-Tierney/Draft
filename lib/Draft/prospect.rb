class Draft::Prospect
  
  attr_accessor :name, :summary
  
  @@all = [] 
  
  def initialize(name, summary)
    @name = name 
    @summary = summary 
    save 
  end 
  
  def self.all 
    Draft::Scraper.scrape_prospect_names if @@all.empty?
    @@all 
  end 
  
  def save
   @@all << self 
  end 
  
end 