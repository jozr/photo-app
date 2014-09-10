class ChangeLikesColumnName < ActiveRecord::Migration
  def change
    rename_column :photos, :likes, :tally
  end
end
