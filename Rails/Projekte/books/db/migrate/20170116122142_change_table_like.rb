class ChangeTableLike < ActiveRecord::Migration[5.0]
  def change
  	change_column :likes, :description, :text
  	rename_column :likes, :description, :description
  end
end
