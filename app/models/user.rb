class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :password_digest, presence: true
  has_many :photos, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :likes, dependent: :destroy
end
