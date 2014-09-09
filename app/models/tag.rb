class Tag < ActiveRecord::Base
  validates :user_id, presence: true
  validates :photo_id, presence: true
  belongs_to :users
  belongs_to :photos
end
