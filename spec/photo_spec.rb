require 'rails_helper'

  describe Photo do
    it {should belong_to :user}
    it {should validate_presence_of :avatar}
    it {should have_many :tags}
  end

