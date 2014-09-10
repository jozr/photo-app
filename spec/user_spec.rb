require 'rails_helper'

describe User do
  it {should validate_uniqueness_of :name}
  it {should validate_presence_of :name}
  it {should validate_presence_of :password_digest}
  it {should have_many :photos}
  it {should have_many :tags}
  it {should have_many :likes}
end
