class Like < ActiveRecord::Base
  validates :photo_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :photo
  validates :photo_id, uniqueness: { :scope => :user_id }
end
