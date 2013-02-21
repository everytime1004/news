# encoding: utf-8
#require 'open-uri'
#
#publishers = [{"link" => "http://imnews.imbc.com/rss/news/news_04.xml", "category" => "economics"}]
#publishers.each do |publisher|
#	doc = Nokogiri::XML(open(publisher["link"]))
#	items = doc.xpath("//item")
#	items.each do |item|
#		news = Newspaper.new
#		news.title = item.at_xpath("title").text
#		news.pubDate = item.at_xpath("pubDate").text
#		news.description = item.at_xpath("description").text.gsub(/<\/?[^>]+>/, '')
#		news.link = item.at_xpath("link").text
#		news.publisher = publisher["name"].to_s
#		news.category = publisher["category"].to_s
#		news.save
#	end
#end