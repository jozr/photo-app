require 'rails_helper'

  describe Like do
    it {should validate_presence_of :photo_id}
    it {should validate_presence_of :user_id}
    it {should belong_to :user}
    it {should belong_to :photo}
    it {should validate_uniqueness_of(:photo_id).scoped_to(:user_id)}
  end
