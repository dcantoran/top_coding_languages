require 'pry'
class Motorcycles
  attr_accessor :name, :description
  @@all = []

  def initialize
    @name = name
    @description = description
  end

  def self.all
    @@all
  end

  def self.create
    html = Scraper.scrape_page
    scrape_list = html.css('')
    scrape_list.each do |unit|
      lang = Languages.new
      lang.name_and_price = unit.css('').text.strip
      lang.description = unit.css('').text.strip
      @@all << lang
      # binding.pry
    end
  end

  def self.list
    lang_list = []
    self.all.each do |tongue|
      lang_list << tongue.name_and_price
    end
    lang_list.each.with_index(1) do |lang_name, idx|
      puts "#{idx} #{lang_name}"
      lang_list
    end
    # bikes_list
  end

end
