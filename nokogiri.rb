require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://vinhqua.github.io/portfolio/"))
# puts doc
search = doc.css('.project').children
puts search