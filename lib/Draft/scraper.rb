class Draft::Scraper
 
 def self.scrape_prospect
  doc = Nokogiri::HTML(open("http://www.nfl.com/news/story/0ap3000001105591/article/daniel-jeremiahs-top-50-2020-nfl-draft-prospect-rankings-30"))  
  prospect = doc.css("div.pr-item")
    prospect.each do |p|
    name = p.css("p.team-info").text.strip
    summary = p.css("div.pr-body").text.strip
    Draft::Prospect.new(name, summary)
   end 
 end
end 