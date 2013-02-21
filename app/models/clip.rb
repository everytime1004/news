class Clip < ActiveRecord::Base
  attr_accessible :memo, :newspaper_id, :user_id, :newspaper, :user

  belongs_to :newspaper
  belongs_to :user
  
  def check_clip(newspaper_id)
  	current_news = Clip.find_by_newspaper_id(newspaper_id)
  end
end
