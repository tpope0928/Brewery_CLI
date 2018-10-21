require 'open-uri'
require 'nokogiri'
require 'pry'
require 'rake'

class Brewery
  attr_accessor :name, :address, :telephone, :url, :brewery_type
  
  @all = []
  
  def initialize
    @all << self
  end
  
end

class Scrapper
  
  def self.scrape_data
    doc =
      Nokogiri::HTML(open("https://www.brewersassociation.org/directories/breweries/"))
      doc.css(".vcard simple brewery-info").each do |brewery|
        binding.pry
      end
      
    end
  end
end
