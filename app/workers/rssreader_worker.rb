# encoding: utf-8
class RssreaderWorker
  include Sidekiq::Worker

  require 'feedzirra'

  def perform(rss, feed)
    loop do
      sleep 15.minutes
      if Feedzirra::Feed.update(feed) != []
        feed = Feedzirra::Feed.update(feed)
        add_entries(rss, feed.new_entries) if feed != []
      end
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