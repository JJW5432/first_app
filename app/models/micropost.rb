class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length => { :maximum => 140 }
  validates :user_id, :numericality => { less_than_or_equal_to: User.count }
  belongs_to :user
end
