class Draft::Scraper
  
  
 def scraper
  site = "http://www.nfl.com/news/story/0ap3000001105591/article/daniel-jeremiahs-top-50-2020-nfl-draft-prospect-rankings-30"
  doc = Nokogiri::HTML(open(site)) 
 end 
 
 def scrape_prospect_names
  scraper 
  prospect = doc.css("div.pr-item")
  prospect_name = prospect.css("p.team-info")
    prospect_name.each do |p|
    puts p.text.strip
   end 
 end
end 