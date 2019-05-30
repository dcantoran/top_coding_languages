require "Nokogiri"
require "open-uri"
require "pry"

class Scraper

  def self.scrape_page
    html = Nokogiri::HTML(open("https://www.thoughtco.com/great-intermediate-motorcycles-2399590"))
  end

end
