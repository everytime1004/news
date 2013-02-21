class Newspaper < ActiveRecord::Base
  attr_accessible :category, :description, :link, :pubDate, :publisher, :title
  has_many :clips

  def init_data(rsses)
  	rsses.each do |rss|
	  	feed = Feedzirra::Feed.fetch_and_parse(rss["link"])
	    add_entries(rss, feed.entries)
	    RssreaderWorker.perform_async(rss, feed)
	   end
  end

  private

  def add_entries(rss, entries)
    entries.each do |entry|
      unless Newspaper.exists? :link => entry.url
        news = Newspaper.new
        news.title = entry.title
        news.pubDate = entry.published
        news.description = entry.summary.gsub(/<\/?[^>]+>/, '')
        news.link = entry.url
        news.publisher = rss["name"]
        news.category = rss["category"]
        news.save
      end
    end
  end

end
