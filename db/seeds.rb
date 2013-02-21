# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# rsses.each do |rss|
# 	feed << Feedzirra::Feed.fetch_and_parse(rss["link"])
# 	feed.entries.each do |entry|
# 		news = Newspaper.new
# 		news.title = entry.title
# 		news.pubDate = entry.published
# 		news.description = entry.summary.gsub(/<\/?[^>]+>/, '')
# 		news.link = entry.url
# 		news.publisher = rss["name"]
# 		news.category = rss["category"]
# 		news.save
# 	end
# end
rsses = 
[{"link" => "http://rss.joinsmsn.com/joins_news_list.xml", "category" => "all", "name" => "조선일보"}, 
{"link" => "http://rss.donga.com/total.xml", "category" => "all", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_40300001.xml", "category" => "all", "name" => "매일경제"},
{"link" => "http://www.khan.co.kr/rss/rssdata/total_news.xml", "category" => "all", "name" => "경향신문"},
{"link" => "http://imnews.imbc.com/rss/news/news_00.xml", "category" => "all", "name" => "MBC"},
{"link" => "http://rss.hankooki.com/news/hk_main.xml", "category" => "all", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/rss.xml", "category" => "all", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/nocutnews.xml", "category" => "all", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/politics.xml", "category" => "politics", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_politics_list.xml", "category" => "politics", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/politics.xml", "category" => "politics", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_30200030.xml", "category" => "politics", "name" => "매일경제"},
{"link" => "http://rss.hankyung.com/new/news_politics.xml", "category" => "politics", "name" => "한경닷컴"},
{"link" => "http://www.khan.co.kr/rss/rssdata/politic_news.xml", "category" => "politics", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=politics", "category" => "politics", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_01.xml", "category" => "politics", "name" => "MBC 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_politics.xml", "category" => "politics", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/politics.xml", "category" => "politics", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutPolitics.xml", "category" => "politics", "name" => "노컷뉴스"},
{"link" => "http://biz.chosun.com/site/data/rss/rss.xml", "category" => "economics", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_money_list.xml", "category" => "economics", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/economy.xml", "category" => "economics", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_30100041.xml", "category" => "economics", "name" => "매일경제"},
{"link" => "http://rss.hankyung.com/new/news_economy.xml", "category" => "economics", "name" => "한경닷컴"},
{"link" => "http://www.khan.co.kr/rss/rssdata/economy_news.xml", "category" => "economics", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=economy", "category" => "economics", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_04.xml", "category" => "economics", "name" => "MBC 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_economy.xml", "category" => "economics", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/economy.xml", "category" => "economics", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutEconomy.xml", "category" => "economics", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/national.xml", "category" => "society", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_life_list.xml", "category" => "society", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/national.xml", "category" => "society", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_50400012.xml", "category" => "society", "name" => "매일경제"},
{"link" => "http://rss.hankyung.com/new/news_society.xml", "category" => "society", "name" => "한경닷컴"},
{"link" => "http://www.khan.co.kr/rss/rssdata/society_news.xml", "category" => "society", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=society", "category" => "society", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_05.xml", "category" => "society", "name" => "MBC 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_society.xml", "category" => "society", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/society.xml", "category" => "society", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutSocial.xml", "category" => "society", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/international.xml", "category" => "international", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_world_list.xml", "category" => "international", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/international.xml", "category" => "international", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_30300018.xml", "category" => "international", "name" => "매일경제"},
{"link" => "http://rss.hankyung.com/new/news_intl.xml", "category" => "international", "name" => "한경닷컴"},
{"link" => "http://www.khan.co.kr/rss/rssdata/kh_world.xml", "category" => "international", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=international", "category" => "international", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_03.xml", "category" => "international", "name" => "MBC 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_world.xml", "category" => "international", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/international.xml", "category" => "international", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutGlobal.xml", "category" => "international", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/sports.xml", "category" => "culture", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_sports_list.xml", "category" => "culture", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/sports.xml", "category" => "culture", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_50600001.xml", "category" => "culture", "name" => "매일경제"},
{"link" => "http://rss.hankyung.com/new/news_sports.xml", "category" => "culture", "name" => "한경닷컴"},
{"link" => "http://www.khan.co.kr/rss/rssdata/kh_sports.xml", "category" => "culture", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=sports", "category" => "culture", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_07.xml", "category" => "culture", "name" => "MBC 뉴스"},
{"link" => "http://file.mk.co.kr/news/rss/rss_40300001.xml", "category" => "culture", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/sports.xml", "category" => "culture", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutSports.xml", "category" => "culture", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/culture.xml", "category" => "culture", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_culture_list.xml", "category" => "culture", "name" => "중앙일보"},
{"link" => "http://rss.donga.com/culture.xml", "category" => "culture", "name" => "동아일보"},
{"link" => "http://file.mk.co.kr/news/rss/rss_30000023.xml", "category" => "culture", "name" => "매일경제"},
{"link" => "http://www.khan.co.kr/rss/rssdata/culture_news.xml", "category" => "culture", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=culture", "category" => "culture", "name" => "SBS 뉴스"},
{"link" => "http://imnews.imbc.com/rss/news/news_06.xml", "category" => "culture", "name" => "MBC 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_culture.xml", "category" => "culture", "name" => "한국일보"},
{"link" => "http://www.pressian.com/rss/culture.xml", "category" => "culture", "name" => "프레시안"},
{"link" => "http://rss.nocutnews.co.kr/NocutCulture.xml", "category" => "culture", "name" => "노컷뉴스"},
{"link" => "http://www.chosun.com/site/data/rss/ent.xml", "category" => "culture", "name" => "조선일보"},
{"link" => "http://rss.joinsmsn.com/joins_star_list.xml", "category" => "culture", "name" => "중앙일보"},
{"link" => "http://www.khan.co.kr/rss/rssdata/kh_entertainment.xml", "category" => "culture", "name" => "경향신문"},
{"link" => "http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=entertainment", "category" => "culture", "name" => "SBS 뉴스"},
{"link" => "http://rss.hankooki.com/news/hk_entv.xml", "category" => "culture", "name" => "한국일보"},
{"link" => "http://rss.nocutnews.co.kr/NocutEnter.xml", "category" => "culture", "name" => "노컷뉴스"}]

call = Newspaper.new
call.init_data(rsses)