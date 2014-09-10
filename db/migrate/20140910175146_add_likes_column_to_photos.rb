class AddLikesColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :likes, :integer
  end
end
